
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int USLEEP_TIME ;
 scalar_t__ read (int,char*,int) ;
 int usleep (int ) ;

void*
read_from_fd(void *arg)
{
 char buf[50];
 int fd = (int) arg;
 usleep(USLEEP_TIME);
 return (void*) read(fd, buf, sizeof(buf));
}
