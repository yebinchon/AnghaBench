
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;
typedef scalar_t__ YabSock ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int LOG (char*,int) ;
 int read_fds ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int write_fds ;

int YabSockSelect(YabSock sock, int check_read, int check_write )
{
   fd_set *read_fds_ptr;
   fd_set *write_fds_ptr;
   struct timeval tv;
   int ret;

   FD_ZERO(&read_fds);
   FD_ZERO(&write_fds);


   if (check_read)
   {
      FD_SET(sock, &read_fds);
      read_fds_ptr = &read_fds;
   }
   else
      read_fds_ptr = ((void*)0);

   if (check_write)
   {
      FD_SET(sock, &write_fds);
      write_fds_ptr = &write_fds;
   }
   else
      write_fds_ptr = ((void*)0);

   tv.tv_sec = 0;
   tv.tv_usec = 0;

   if ((ret=select(sock+1, read_fds_ptr, write_fds_ptr, ((void*)0), &tv)) < 1)
   {
      LOG("select: %d\n", ret);
      return -1;
   }

   return 0;
}
