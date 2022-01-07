
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int szChunk; scalar_t__ mmapSizeMax; int mmapSize; int zPath; void* lastErrno; int h; } ;
typedef TYPE_1__ unixFile ;
struct stat {int st_size; int st_blksize; } ;
typedef int i64 ;


 int EINTR ;
 int SQLITE_IOERR_FSTAT ;
 int SQLITE_IOERR_TRUNCATE ;
 int SQLITE_IOERR_WRITE ;
 int SQLITE_OK ;
 void* errno ;
 int osFallocate (int ,int,int) ;
 scalar_t__ osFstat (int ,struct stat*) ;
 scalar_t__ robust_ftruncate (int ,int) ;
 int seekAndWrite (TYPE_1__*,int,char*,int) ;
 int unixLogError (int ,char*,int ) ;
 int unixMapfile (TYPE_1__*,int) ;

__attribute__((used)) static int fcntlSizeHint(unixFile *pFile, i64 nByte){
  if( pFile->szChunk>0 ){
    i64 nSize;
    struct stat buf;

    if( osFstat(pFile->h, &buf) ) return SQLITE_IOERR_FSTAT;

    nSize = ((nByte+pFile->szChunk-1) / pFile->szChunk) * pFile->szChunk;
    if( nSize>(i64)buf.st_size ){
      int nBlk = buf.st_blksize;
      i64 iWrite;

      if( robust_ftruncate(pFile->h, nSize) ){
        pFile->lastErrno = errno;
        return unixLogError(SQLITE_IOERR_TRUNCATE, "ftruncate", pFile->zPath);
      }
      iWrite = ((buf.st_size + 2*nBlk - 1)/nBlk)*nBlk-1;
      while( iWrite<nSize ){
        int nWrite = seekAndWrite(pFile, iWrite, "", 1);
        if( nWrite!=1 ) return SQLITE_IOERR_WRITE;
        iWrite += nBlk;
      }

    }
  }

  if( pFile->mmapSizeMax>0 && nByte>pFile->mmapSize ){
    int rc;
    if( pFile->szChunk<=0 ){
      if( robust_ftruncate(pFile->h, nByte) ){
        pFile->lastErrno = errno;
        return unixLogError(SQLITE_IOERR_TRUNCATE, "ftruncate", pFile->zPath);
      }
    }

    rc = unixMapfile(pFile, nByte);
    return rc;
  }

  return SQLITE_OK;
}
