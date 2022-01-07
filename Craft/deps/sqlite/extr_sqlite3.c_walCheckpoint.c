
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int i64 ;
typedef int WalIterator ;
struct TYPE_15__ {scalar_t__ nBackfill; scalar_t__* aReadMark; } ;
typedef TYPE_2__ WalCkptInfo ;
struct TYPE_14__ {scalar_t__ mxFrame; scalar_t__ nPage; } ;
struct TYPE_16__ {int writeLock; TYPE_1__ hdr; int pDbFd; int pWalFd; } ;
typedef TYPE_3__ Wal ;
struct TYPE_17__ {scalar_t__ mxFrame; } ;


 int IS_BIG_INT (int) ;
 scalar_t__ READMARK_NOT_USED ;
 int SQLITE_BUSY ;
 int SQLITE_CHECKPOINT_PASSIVE ;
 int SQLITE_CHECKPOINT_RESTART ;
 int SQLITE_FCNTL_SIZE_HINT ;
 int SQLITE_OK ;
 int WAL_FRAME_HDRSIZE ;
 int WAL_NREADER ;
 int WAL_READ_LOCK (int) ;
 int assert (int) ;
 int sqlite3OsFileControlHint (int ,int ,int*) ;
 int sqlite3OsFileSize (int ,int*) ;
 int sqlite3OsRead (int ,int *,int,int) ;
 int sqlite3OsSync (int ,int) ;
 int sqlite3OsTruncate (int ,int) ;
 int sqlite3OsWrite (int ,int *,int,int) ;
 int testcase (int) ;
 int walBusyLock (TYPE_3__*,int (*) (void*),void*,int ,int) ;
 TYPE_2__* walCkptInfo (TYPE_3__*) ;
 int walFrameOffset (scalar_t__,int) ;
 scalar_t__ walFramePgno (TYPE_3__*,scalar_t__) ;
 TYPE_7__* walIndexHdr (TYPE_3__*) ;
 int walIteratorFree (int *) ;
 int walIteratorInit (TYPE_3__*,int **) ;
 scalar_t__ walIteratorNext (int *,scalar_t__*,scalar_t__*) ;
 int walPagesize (TYPE_3__*) ;
 int walUnlockExclusive (TYPE_3__*,int ,int) ;

__attribute__((used)) static int walCheckpoint(
  Wal *pWal,
  int eMode,
  int (*xBusyCall)(void*),
  void *pBusyArg,
  int sync_flags,
  u8 *zBuf
){
  int rc;
  int szPage;
  WalIterator *pIter = 0;
  u32 iDbpage = 0;
  u32 iFrame = 0;
  u32 mxSafeFrame;
  u32 mxPage;
  int i;
  volatile WalCkptInfo *pInfo;
  int (*xBusy)(void*) = 0;

  szPage = walPagesize(pWal);
  testcase( szPage<=32768 );
  testcase( szPage>=65536 );
  pInfo = walCkptInfo(pWal);
  if( pInfo->nBackfill>=pWal->hdr.mxFrame ) return SQLITE_OK;


  rc = walIteratorInit(pWal, &pIter);
  if( rc!=SQLITE_OK ){
    return rc;
  }
  assert( pIter );

  if( eMode!=SQLITE_CHECKPOINT_PASSIVE ) xBusy = xBusyCall;






  mxSafeFrame = pWal->hdr.mxFrame;
  mxPage = pWal->hdr.nPage;
  for(i=1; i<WAL_NREADER; i++){
    u32 y = pInfo->aReadMark[i];
    if( mxSafeFrame>y ){
      assert( y<=pWal->hdr.mxFrame );
      rc = walBusyLock(pWal, xBusy, pBusyArg, WAL_READ_LOCK(i), 1);
      if( rc==SQLITE_OK ){
        pInfo->aReadMark[i] = (i==1 ? mxSafeFrame : READMARK_NOT_USED);
        walUnlockExclusive(pWal, WAL_READ_LOCK(i), 1);
      }else if( rc==SQLITE_BUSY ){
        mxSafeFrame = y;
        xBusy = 0;
      }else{
        goto walcheckpoint_out;
      }
    }
  }

  if( pInfo->nBackfill<mxSafeFrame
   && (rc = walBusyLock(pWal, xBusy, pBusyArg, WAL_READ_LOCK(0), 1))==SQLITE_OK
  ){
    i64 nSize;
    u32 nBackfill = pInfo->nBackfill;


    if( sync_flags ){
      rc = sqlite3OsSync(pWal->pWalFd, sync_flags);
    }




    if( rc==SQLITE_OK ){
      i64 nReq = ((i64)mxPage * szPage);
      rc = sqlite3OsFileSize(pWal->pDbFd, &nSize);
      if( rc==SQLITE_OK && nSize<nReq ){
        sqlite3OsFileControlHint(pWal->pDbFd, SQLITE_FCNTL_SIZE_HINT, &nReq);
      }
    }



    while( rc==SQLITE_OK && 0==walIteratorNext(pIter, &iDbpage, &iFrame) ){
      i64 iOffset;
      assert( walFramePgno(pWal, iFrame)==iDbpage );
      if( iFrame<=nBackfill || iFrame>mxSafeFrame || iDbpage>mxPage ) continue;
      iOffset = walFrameOffset(iFrame, szPage) + WAL_FRAME_HDRSIZE;

      rc = sqlite3OsRead(pWal->pWalFd, zBuf, szPage, iOffset);
      if( rc!=SQLITE_OK ) break;
      iOffset = (iDbpage-1)*(i64)szPage;
      testcase( IS_BIG_INT(iOffset) );
      rc = sqlite3OsWrite(pWal->pDbFd, zBuf, szPage, iOffset);
      if( rc!=SQLITE_OK ) break;
    }


    if( rc==SQLITE_OK ){
      if( mxSafeFrame==walIndexHdr(pWal)->mxFrame ){
        i64 szDb = pWal->hdr.nPage*(i64)szPage;
        testcase( IS_BIG_INT(szDb) );
        rc = sqlite3OsTruncate(pWal->pDbFd, szDb);
        if( rc==SQLITE_OK && sync_flags ){
          rc = sqlite3OsSync(pWal->pDbFd, sync_flags);
        }
      }
      if( rc==SQLITE_OK ){
        pInfo->nBackfill = mxSafeFrame;
      }
    }


    walUnlockExclusive(pWal, WAL_READ_LOCK(0), 1);
  }

  if( rc==SQLITE_BUSY ){


    rc = SQLITE_OK;
  }






  if( rc==SQLITE_OK && eMode!=SQLITE_CHECKPOINT_PASSIVE ){
    assert( pWal->writeLock );
    if( pInfo->nBackfill<pWal->hdr.mxFrame ){
      rc = SQLITE_BUSY;
    }else if( eMode==SQLITE_CHECKPOINT_RESTART ){
      assert( mxSafeFrame==pWal->hdr.mxFrame );
      rc = walBusyLock(pWal, xBusy, pBusyArg, WAL_READ_LOCK(1), WAL_NREADER-1);
      if( rc==SQLITE_OK ){
        walUnlockExclusive(pWal, WAL_READ_LOCK(1), WAL_NREADER-1);
      }
    }
  }

 walcheckpoint_out:
  walIteratorFree(pIter);
  return rc;
}
