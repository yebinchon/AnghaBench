
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i64 ;


 int EINTR ;
 int OSTRACE (char*) ;
 int SEEK_SET ;
 int SimulateIOError (int ) ;
 int TIMER_ELAPSED ;
 int TIMER_END ;
 int TIMER_START ;
 int assert (int) ;
 int errno ;
 int lseek (int,int,int ) ;
 int osPwrite (int,void const*,int,int) ;
 int osPwrite64 (int,void const*,int,int) ;
 int osWrite (int,void const*,int) ;

__attribute__((used)) static int seekAndWriteFd(
  int fd,
  i64 iOff,
  const void *pBuf,
  int nBuf,
  int *piErrno
){
  int rc = 0;

  assert( nBuf==(nBuf&0x1ffff) );
  nBuf &= 0x1ffff;
  TIMER_START;






  do{
    i64 iSeek = lseek(fd, iOff, SEEK_SET);
    SimulateIOError( iSeek-- );

    if( iSeek!=iOff ){
      if( piErrno ) *piErrno = (iSeek==-1 ? errno : 0);
      return -1;
    }
    rc = osWrite(fd, pBuf, nBuf);
  }while( rc<0 && errno==EINTR );


  TIMER_END;
  OSTRACE(("WRITE   %-3d %5d %7lld %llu\n", fd, rc, iOff, TIMER_ELAPSED));

  if( rc<0 && piErrno ) *piErrno = errno;
  return rc;
}
