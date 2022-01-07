
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eFileLock; int lastErrno; scalar_t__ lockingContext; } ;
typedef TYPE_1__ unixFile ;
typedef int sqlite3_file ;


 int EEXIST ;
 scalar_t__ IS_LOCK_ERROR (int) ;
 int NO_LOCK ;
 int SQLITE_BUSY ;
 int SQLITE_IOERR_LOCK ;
 int SQLITE_OK ;
 int errno ;
 int osMkdir (char*,int) ;
 int sqliteErrorFromPosixError (int,int ) ;
 int utime (char*,int *) ;
 int utimes (char*,int *) ;

__attribute__((used)) static int dotlockLock(sqlite3_file *id, int eFileLock) {
  unixFile *pFile = (unixFile*)id;
  char *zLockFile = (char *)pFile->lockingContext;
  int rc = SQLITE_OK;





  if( pFile->eFileLock > NO_LOCK ){
    pFile->eFileLock = eFileLock;




    utimes(zLockFile, ((void*)0));

    return SQLITE_OK;
  }


  rc = osMkdir(zLockFile, 0777);
  if( rc<0 ){

    int tErrno = errno;
    if( EEXIST == tErrno ){
      rc = SQLITE_BUSY;
    } else {
      rc = sqliteErrorFromPosixError(tErrno, SQLITE_IOERR_LOCK);
      if( IS_LOCK_ERROR(rc) ){
        pFile->lastErrno = tErrno;
      }
    }
    return rc;
  }


  pFile->eFileLock = eFileLock;
  return rc;
}
