
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int VC_CMA_IOC_RESERVE ;
 int close (int) ;
 int ioctl (int,int ,int) ;
 int open (char*,int ) ;
 int printf (char*,int) ;
 int sleep (int) ;

__attribute__((used)) static void reserve_test(int reserve, int delay)
{
   int fd = open("/dev/vc-cma", O_RDWR);
   int rc = -1;
   if (fd >= 0)
   {
      rc = ioctl(fd, VC_CMA_IOC_RESERVE, reserve);
      if (rc == 0)
      {
         printf("Sleeping for %d seconds...\n", delay);
         sleep(delay);
      }
      else
         printf("* failed to ioctl /dev/vc-cma - rc %d\n", rc);
      close(fd);
   }
   else
      printf("* failed to open /dev/vc-cma - rc %d\n", fd);
}
