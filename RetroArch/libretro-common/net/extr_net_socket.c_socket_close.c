
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int closesocket (int) ;
 int sceNetSocketClose (int) ;
 int socketclose (int) ;

int socket_close(int fd)
{
   return close(fd);

}
