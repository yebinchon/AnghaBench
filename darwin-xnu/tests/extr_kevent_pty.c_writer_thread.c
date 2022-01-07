
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int c ;


 scalar_t__ EINTR ;
 int T_ASSERT_GT (int,int ,char*) ;
 int T_LOG (char*,int ) ;
 int T_QUIET ;
 int T_SETUPBEGIN ;
 int T_SETUPEND ;
 scalar_t__ errno ;
 int memset (char*,char,int) ;
 int strerror (scalar_t__) ;
 int write (int,char*,int) ;
 scalar_t__ writing ;

__attribute__((used)) static void *
writer_thread(void *arg)
{
 int fd = (int)arg;
 char c[4096];
 memset(c, 'a', sizeof(c));

 T_SETUPBEGIN;
 T_QUIET;
 T_ASSERT_GT(fd, 0, "writer thread received valid fd");
 T_SETUPEND;

 while (writing) {
  ssize_t wrsize = write(fd, c, sizeof(c));
  if (wrsize == -1) {
   if (errno == EINTR) {
    continue;
   } else {
    T_LOG("writer got an error (%s), shutting down", strerror(errno));
    return ((void*)0);
   }
  }
 }

 return ((void*)0);
}
