
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int USLEEP_TIME ;
 int usleep (int ) ;
 scalar_t__ write (int,char*,int) ;

void*
write_to_fd(void *arg)
{
 char buf[50];
 int fd = (int) arg;
 usleep(USLEEP_TIME);
 return (void*) write(fd, buf, sizeof(buf));
}
