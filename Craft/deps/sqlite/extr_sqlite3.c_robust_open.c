
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;
typedef int mode_t ;


 scalar_t__ EINTR ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int O_CLOEXEC ;
 int SQLITE_DEFAULT_FILE_PERMISSIONS ;
 scalar_t__ errno ;
 int osFchmod (int,int) ;
 int osFcntl (int,int ,int) ;
 scalar_t__ osFstat (int,struct stat*) ;
 int osOpen (char const*,int,int) ;

__attribute__((used)) static int robust_open(const char *z, int f, mode_t m){
  int fd;
  mode_t m2 = m ? m : SQLITE_DEFAULT_FILE_PERMISSIONS;
  do{



    fd = osOpen(z,f,m2);

  }while( fd<0 && errno==EINTR );
  if( fd>=0 ){
    if( m!=0 ){
      struct stat statbuf;
      if( osFstat(fd, &statbuf)==0
       && statbuf.st_size==0
       && (statbuf.st_mode&0777)!=m
      ){
        osFchmod(fd, m);
      }
    }



  }
  return fd;
}
