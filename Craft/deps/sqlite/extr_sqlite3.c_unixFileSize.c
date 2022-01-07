
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lastErrno; int h; } ;
typedef TYPE_1__ unixFile ;
struct stat {int st_size; } ;
typedef int sqlite3_file ;
typedef int i64 ;


 int SQLITE_IOERR_FSTAT ;
 int SQLITE_OK ;
 int SimulateIOError (int) ;
 int assert (int *) ;
 int errno ;
 int osFstat (int ,struct stat*) ;

__attribute__((used)) static int unixFileSize(sqlite3_file *id, i64 *pSize){
  int rc;
  struct stat buf;
  assert( id );
  rc = osFstat(((unixFile*)id)->h, &buf);
  SimulateIOError( rc=1 );
  if( rc!=0 ){
    ((unixFile*)id)->lastErrno = errno;
    return SQLITE_IOERR_FSTAT;
  }
  *pSize = buf.st_size;







  if( *pSize==1 ) *pSize = 0;


  return SQLITE_OK;
}
