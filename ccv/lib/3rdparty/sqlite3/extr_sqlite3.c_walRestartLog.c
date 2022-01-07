
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_13__ {scalar_t__ nBackfill; } ;
typedef TYPE_2__ WalCkptInfo ;
struct TYPE_12__ {scalar_t__ mxFrame; } ;
struct TYPE_14__ {int readLock; TYPE_1__ hdr; } ;
typedef TYPE_3__ Wal ;


 int SQLITE_BUSY ;
 int SQLITE_IOERR ;
 int SQLITE_OK ;
 int SQLITE_PROTOCOL ;
 scalar_t__ WAL_NREADER ;
 int WAL_READ_LOCK (int) ;
 int WAL_RETRY ;
 int assert (int) ;
 int sqlite3_randomness (int,int *) ;
 int testcase (int) ;
 TYPE_2__* walCkptInfo (TYPE_3__*) ;
 int walLockExclusive (TYPE_3__*,int ,scalar_t__) ;
 int walRestartHdr (TYPE_3__*,int ) ;
 int walTryBeginRead (TYPE_3__*,int*,int,int) ;
 int walUnlockExclusive (TYPE_3__*,int ,scalar_t__) ;
 int walUnlockShared (TYPE_3__*,int ) ;

__attribute__((used)) static int walRestartLog(Wal *pWal){
  int rc = SQLITE_OK;
  int cnt;

  if( pWal->readLock==0 ){
    volatile WalCkptInfo *pInfo = walCkptInfo(pWal);
    assert( pInfo->nBackfill==pWal->hdr.mxFrame );
    if( pInfo->nBackfill>0 ){
      u32 salt1;
      sqlite3_randomness(4, &salt1);
      rc = walLockExclusive(pWal, WAL_READ_LOCK(1), WAL_NREADER-1);
      if( rc==SQLITE_OK ){
        walRestartHdr(pWal, salt1);
        walUnlockExclusive(pWal, WAL_READ_LOCK(1), WAL_NREADER-1);
      }else if( rc!=SQLITE_BUSY ){
        return rc;
      }
    }
    walUnlockShared(pWal, WAL_READ_LOCK(0));
    pWal->readLock = -1;
    cnt = 0;
    do{
      int notUsed;
      rc = walTryBeginRead(pWal, &notUsed, 1, ++cnt);
    }while( rc==WAL_RETRY );
    assert( (rc&0xff)!=SQLITE_BUSY );
    testcase( (rc&0xff)==SQLITE_IOERR );
    testcase( rc==SQLITE_PROTOCOL );
    testcase( rc==SQLITE_OK );
  }
  return rc;
}
