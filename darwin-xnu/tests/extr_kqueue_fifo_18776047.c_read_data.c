
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EAGAIN ;
 int READ_BUFFER_LEN ;
 int T_ASSERT_FAIL (char*,int) ;
 int abort () ;
 scalar_t__ errno ;
 scalar_t__ read (int,char*,int) ;

int
read_data(int fd)
{
 int retval, count = 0;
 char databuffer[READ_BUFFER_LEN];
 while (1) {
  errno = 0;
  retval = (int)read(fd, databuffer, READ_BUFFER_LEN);
  if (retval < 0) {
   if (errno == EAGAIN) {
    return count;
   } else {
    T_ASSERT_FAIL("read from fd %d failed.", fd);
    abort();
   }
  }
  count += retval;
 }
}
