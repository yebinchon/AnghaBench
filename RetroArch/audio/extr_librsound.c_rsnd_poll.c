
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int dummy; } ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int perror (char*) ;
 scalar_t__ socketpoll (struct pollfd*,int,int) ;

__attribute__((used)) static int rsnd_poll(struct pollfd *fd, int numfd, int timeout)
{
   for(;;)
   {
      if ( socketpoll(fd, numfd, timeout) < 0 )
      {
         if ( errno == EINTR )
            continue;

         perror("poll");
         return -1;
      }
      return 0;
   }
}
