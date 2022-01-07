
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int c ;


 scalar_t__ EBADF ;
 scalar_t__ EINTR ;
 int T_ASSERT_GT (int,int ,char*) ;
 int T_ASSERT_POSIX_SUCCESS (int,char*) ;
 int T_LOG (char*,int ) ;
 int T_QUIET ;
 int T_SETUPBEGIN ;
 int T_SETUPEND ;
 scalar_t__ errno ;
 int read (int,char*,int) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static void *
reader_thread(void *arg)
{
 int fd = (int)arg;
 char c;

 T_SETUPBEGIN;
 T_QUIET;
 T_ASSERT_GT(fd, 0, "reader thread received valid fd");
 T_SETUPEND;

 for (;;) {
  ssize_t rdsize = read(fd, &c, sizeof(c));
  if (rdsize == -1) {
   if (errno == EINTR) {
    continue;
   } else if (errno == EBADF) {
    T_LOG("reader got an error (%s), shutting down", strerror(errno));
    return ((void*)0);
   } else {
    T_ASSERT_POSIX_SUCCESS(rdsize, "read on PTY");
   }
  } else if (rdsize == 0) {
   return ((void*)0);
  }
 }

 return ((void*)0);
}
