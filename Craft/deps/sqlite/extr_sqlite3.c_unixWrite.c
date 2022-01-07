
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pUnused; int dbUpdate; int transCntrChng; int mmapSize; scalar_t__ lastErrno; scalar_t__ pMapRegion; scalar_t__ inNormalWrite; } ;
typedef TYPE_1__ unixFile ;
typedef int u8 ;
typedef int sqlite3_int64 ;
typedef int sqlite3_file ;


 scalar_t__ ENOSPC ;
 int PENDING_BYTE ;
 int SQLITE_FULL ;
 int SQLITE_IOERR_WRITE ;
 int SQLITE_OK ;
 int SimulateDiskfullError (int) ;
 int SimulateIOError (int) ;
 int SimulateIOErrorBenign (int) ;
 int assert (int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (int *,void const*,int) ;
 int seekAndRead (TYPE_1__*,int,char*,int) ;
 int seekAndWrite (TYPE_1__*,int,void const*,int) ;

__attribute__((used)) static int unixWrite(
  sqlite3_file *id,
  const void *pBuf,
  int amt,
  sqlite3_int64 offset
){
  unixFile *pFile = (unixFile*)id;
  int wrote = 0;
  assert( id );
  assert( amt>0 );
  while( amt>0 && (wrote = seekAndWrite(pFile, offset, pBuf, amt))>0 ){
    amt -= wrote;
    offset += wrote;
    pBuf = &((char*)pBuf)[wrote];
  }
  SimulateIOError(( wrote=(-1), amt=1 ));
  SimulateDiskfullError(( wrote=0, amt=1 ));

  if( amt>0 ){
    if( wrote<0 && pFile->lastErrno!=ENOSPC ){

      return SQLITE_IOERR_WRITE;
    }else{
      pFile->lastErrno = 0;
      return SQLITE_FULL;
    }
  }

  return SQLITE_OK;
}
