
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int ioctl (int,int,int*) ;
 int stderr ;

void
myioctl
( int fd,
  int command,
  int* arg )
{
    int rc;
    extern int errno;

    rc = ioctl(fd, command, arg);
    if (rc < 0)
    {
 fprintf(stderr, "ioctl(dsp,%d,arg) failed\n", command);
 fprintf(stderr, "errno=%d\n", errno);
 exit(-1);
    }
}
