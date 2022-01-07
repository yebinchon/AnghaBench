
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h; } ;
typedef TYPE_1__ unixFile ;
typedef scalar_t__ sqlite3_int64 ;
typedef int i64 ;


 scalar_t__ EINTR ;
 int OSTRACE (char*) ;
 int SEEK_SET ;
 int SimulateIOError (int) ;
 int TIMER_ELAPSED ;
 int TIMER_END ;
 int TIMER_START ;
 int assert (int) ;
 scalar_t__ errno ;
 int lseek (int,scalar_t__,int ) ;
 int osPread (int,void*,int,scalar_t__) ;
 int osPread64 (int,void*,int,scalar_t__) ;
 int osRead (int,void*,int) ;
 int storeLastErrno (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int seekAndRead(unixFile *id, sqlite3_int64 offset, void *pBuf, int cnt){
  int got;
  int prior = 0;

  i64 newOffset;

  TIMER_START;
  assert( cnt==(cnt&0x1ffff) );
  assert( id->h>2 );
  do{







    newOffset = lseek(id->h, offset, SEEK_SET);
    SimulateIOError( newOffset = -1 );
    if( newOffset<0 ){
      storeLastErrno((unixFile*)id, errno);
      return -1;
    }
    got = osRead(id->h, pBuf, cnt);

    if( got==cnt ) break;
    if( got<0 ){
      if( errno==EINTR ){ got = 1; continue; }
      prior = 0;
      storeLastErrno((unixFile*)id, errno);
      break;
    }else if( got>0 ){
      cnt -= got;
      offset += got;
      prior += got;
      pBuf = (void*)(got + (char*)pBuf);
    }
  }while( got>0 );
  TIMER_END;
  OSTRACE(("READ    %-3d %5d %7lld %llu\n",
            id->h, got+prior, offset-prior, TIMER_ELAPSED));
  return got+prior;
}
