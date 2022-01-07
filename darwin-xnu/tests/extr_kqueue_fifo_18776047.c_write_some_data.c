
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EAGAIN ;
 int T_ASSERT_FAIL (char*,int,char*,int) ;
 int abort () ;
 scalar_t__ errno ;
 scalar_t__ write (int,char*,size_t) ;

int
write_some_data(int fd)
{
 int retval = 0;
 int count = 0;
 int len = 5;
 char * data = "ABCDE";
 while (1) {
  errno = 0;
  retval = (int)write(fd, data, (size_t)len);
  if (retval < 0) {
   if (errno == EAGAIN) {
    if (len == 1)
     return count;
    else
     len--;
   } else {
    T_ASSERT_FAIL("write to fd %d of %s of len %d failed.", fd, data, len);
    abort();
   }
  } else {
   count += retval;
  }
 }
}
