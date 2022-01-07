
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int SOL_SOCKET ;
 int SO_NBIO ;
 int fcntl (int,int ,...) ;
 scalar_t__ ioctlsocket (int,int ,int*) ;
 int setsockopt (int,int ,int ,int*,int) ;

bool socket_nonblock(int fd)
{
   return fcntl(fd, F_SETFL, fcntl(fd, F_GETFL) | O_NONBLOCK) == 0;

}
