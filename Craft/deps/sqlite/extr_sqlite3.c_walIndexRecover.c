
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
typedef scalar_t__ i64 ;
typedef int WalIndexHdr ;
struct TYPE_13__ {int* aReadMark; scalar_t__ nBackfill; } ;
typedef TYPE_1__ WalCkptInfo ;
struct TYPE_12__ {scalar_t__ bigEndCksum; void** aFrameCksum; int mxFrame; int nPage; scalar_t__ szPage; int aSalt; } ;
struct TYPE_14__ {int ckptLock; int writeLock; int szPage; int zWalName; TYPE_11__ hdr; int pWalFd; void* nCkpt; } ;
typedef TYPE_2__ Wal ;


 int READMARK_NOT_USED ;
 scalar_t__ SQLITE_BIGENDIAN ;
 int SQLITE_CANTOPEN_BKPT ;
 int SQLITE_MAX_PAGE_SIZE ;
 int SQLITE_NOMEM ;
 int SQLITE_NOTICE_RECOVER_WAL ;
 int SQLITE_OK ;
 int SQLITE_SHM_NLOCK ;
 int WALTRACE (char*) ;
 int WAL_ALL_BUT_WRITE ;
 int WAL_CKPT_LOCK ;
 int WAL_FRAME_HDRSIZE ;
 scalar_t__ WAL_HDRSIZE ;
 int WAL_MAGIC ;
 int WAL_MAX_VERSION ;
 int WAL_NREADER ;
 int WAL_WRITE_LOCK ;
 int assert (int) ;
 int memcpy (int *,scalar_t__*,int) ;
 int memset (TYPE_11__*,int ,int) ;
 void* sqlite3Get4byte (scalar_t__*) ;
 int sqlite3OsFileSize (int ,scalar_t__*) ;
 int sqlite3OsRead (int ,scalar_t__*,int,scalar_t__) ;
 int sqlite3_free (scalar_t__*) ;
 int sqlite3_log (int ,char*,int,int ) ;
 scalar_t__ sqlite3_malloc (int) ;
 int testcase (int) ;
 int walChecksumBytes (int,scalar_t__*,scalar_t__,int ,void**) ;
 TYPE_1__* walCkptInfo (TYPE_2__*) ;
 int walDecodeFrame (TYPE_2__*,int*,int*,scalar_t__*,scalar_t__*) ;
 int walIndexAppend (TYPE_2__*,int,int) ;
 int walIndexWriteHdr (TYPE_2__*) ;
 int walLockExclusive (TYPE_2__*,int,int) ;
 int walUnlockExclusive (TYPE_2__*,int,int) ;

__attribute__((used)) static int walIndexRecover(Wal *pWal){
  int rc;
  i64 nSize;
  u32 aFrameCksum[2] = {0, 0};
  int iLock;
  int nLock;







  assert( pWal->ckptLock==1 || pWal->ckptLock==0 );
  assert( WAL_ALL_BUT_WRITE==WAL_WRITE_LOCK+1 );
  assert( WAL_CKPT_LOCK==WAL_ALL_BUT_WRITE );
  assert( pWal->writeLock );
  iLock = WAL_ALL_BUT_WRITE + pWal->ckptLock;
  nLock = SQLITE_SHM_NLOCK - iLock;
  rc = walLockExclusive(pWal, iLock, nLock);
  if( rc ){
    return rc;
  }
  WALTRACE(("WAL%p: recovery begin...\n", pWal));

  memset(&pWal->hdr, 0, sizeof(WalIndexHdr));

  rc = sqlite3OsFileSize(pWal->pWalFd, &nSize);
  if( rc!=SQLITE_OK ){
    goto recovery_error;
  }

  if( nSize>WAL_HDRSIZE ){
    u8 aBuf[WAL_HDRSIZE];
    u8 *aFrame = 0;
    int szFrame;
    u8 *aData;
    int iFrame;
    i64 iOffset;
    int szPage;
    u32 magic;
    u32 version;
    int isValid;


    rc = sqlite3OsRead(pWal->pWalFd, aBuf, WAL_HDRSIZE, 0);
    if( rc!=SQLITE_OK ){
      goto recovery_error;
    }






    magic = sqlite3Get4byte(&aBuf[0]);
    szPage = sqlite3Get4byte(&aBuf[8]);
    if( (magic&0xFFFFFFFE)!=WAL_MAGIC
     || szPage&(szPage-1)
     || szPage>SQLITE_MAX_PAGE_SIZE
     || szPage<512
    ){
      goto finished;
    }
    pWal->hdr.bigEndCksum = (u8)(magic&0x00000001);
    pWal->szPage = szPage;
    pWal->nCkpt = sqlite3Get4byte(&aBuf[12]);
    memcpy(&pWal->hdr.aSalt, &aBuf[16], 8);


    walChecksumBytes(pWal->hdr.bigEndCksum==SQLITE_BIGENDIAN,
        aBuf, WAL_HDRSIZE-2*4, 0, pWal->hdr.aFrameCksum
    );
    if( pWal->hdr.aFrameCksum[0]!=sqlite3Get4byte(&aBuf[24])
     || pWal->hdr.aFrameCksum[1]!=sqlite3Get4byte(&aBuf[28])
    ){
      goto finished;
    }



    version = sqlite3Get4byte(&aBuf[4]);
    if( version!=WAL_MAX_VERSION ){
      rc = SQLITE_CANTOPEN_BKPT;
      goto finished;
    }


    szFrame = szPage + WAL_FRAME_HDRSIZE;
    aFrame = (u8 *)sqlite3_malloc(szFrame);
    if( !aFrame ){
      rc = SQLITE_NOMEM;
      goto recovery_error;
    }
    aData = &aFrame[WAL_FRAME_HDRSIZE];


    iFrame = 0;
    for(iOffset=WAL_HDRSIZE; (iOffset+szFrame)<=nSize; iOffset+=szFrame){
      u32 pgno;
      u32 nTruncate;


      iFrame++;
      rc = sqlite3OsRead(pWal->pWalFd, aFrame, szFrame, iOffset);
      if( rc!=SQLITE_OK ) break;
      isValid = walDecodeFrame(pWal, &pgno, &nTruncate, aData, aFrame);
      if( !isValid ) break;
      rc = walIndexAppend(pWal, iFrame, pgno);
      if( rc!=SQLITE_OK ) break;


      if( nTruncate ){
        pWal->hdr.mxFrame = iFrame;
        pWal->hdr.nPage = nTruncate;
        pWal->hdr.szPage = (u16)((szPage&0xff00) | (szPage>>16));
        testcase( szPage<=32768 );
        testcase( szPage>=65536 );
        aFrameCksum[0] = pWal->hdr.aFrameCksum[0];
        aFrameCksum[1] = pWal->hdr.aFrameCksum[1];
      }
    }

    sqlite3_free(aFrame);
  }

finished:
  if( rc==SQLITE_OK ){
    volatile WalCkptInfo *pInfo;
    int i;
    pWal->hdr.aFrameCksum[0] = aFrameCksum[0];
    pWal->hdr.aFrameCksum[1] = aFrameCksum[1];
    walIndexWriteHdr(pWal);





    pInfo = walCkptInfo(pWal);
    pInfo->nBackfill = 0;
    pInfo->aReadMark[0] = 0;
    for(i=1; i<WAL_NREADER; i++) pInfo->aReadMark[i] = READMARK_NOT_USED;
    if( pWal->hdr.mxFrame ) pInfo->aReadMark[1] = pWal->hdr.mxFrame;






    if( pWal->hdr.nPage ){
      sqlite3_log(SQLITE_NOTICE_RECOVER_WAL,
          "recovered %d frames from WAL file %s",
          pWal->hdr.mxFrame, pWal->zWalName
      );
    }
  }

recovery_error:
  WALTRACE(("WAL%p: recovery %s\n", pWal, rc ? "failed" : "ok"));
  walUnlockExclusive(pWal, iLock, nLock);
  return rc;
}
