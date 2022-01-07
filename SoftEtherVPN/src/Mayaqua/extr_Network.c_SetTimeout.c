
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tv_timeout ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef int UINT ;
struct TYPE_3__ {scalar_t__ Type; int TimeOut; int socket; } ;
typedef TYPE_1__ SOCK ;


 int INFINITE ;
 scalar_t__ SOCK_INPROC ;
 scalar_t__ SOCK_UDP ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int SO_SNDTIMEO ;
 int TIMEOUT_INFINITE ;
 int setsockopt (int ,int ,int ,char*,int) ;

void SetTimeout(SOCK *sock, UINT timeout)
{

 if (sock == ((void*)0))
 {
  return;
 }
 if (sock->Type == SOCK_UDP)
 {
  return;
 }

 if (timeout == INFINITE)
 {
  timeout = TIMEOUT_INFINITE;
 }

 sock->TimeOut = timeout;



 if (sock->Type != SOCK_INPROC)
 {
 }
}
