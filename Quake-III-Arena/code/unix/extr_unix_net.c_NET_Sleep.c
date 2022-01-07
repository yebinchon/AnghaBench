
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
typedef scalar_t__ qboolean ;
typedef int fd_set ;
struct TYPE_2__ {int integer; } ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 TYPE_1__* com_dedicated ;
 scalar_t__ ip_socket ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;

void NET_Sleep(int msec)
{
    struct timeval timeout;
 fd_set fdset;
 extern qboolean stdin_active;

 if (!ip_socket || !com_dedicated->integer)
  return;

 FD_ZERO(&fdset);
 if (stdin_active)
  FD_SET(0, &fdset);
 FD_SET(ip_socket, &fdset);
 timeout.tv_sec = msec/1000;
 timeout.tv_usec = (msec%1000)*1000;
 select(ip_socket+1, &fdset, ((void*)0), ((void*)0), &timeout);
}
