
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {scalar_t__ Type; int TimeOut; } ;
typedef TYPE_1__ SOCK ;


 int INFINITE ;
 scalar_t__ SOCK_INPROC ;
 scalar_t__ SOCK_TCP ;

UINT GetTimeout(SOCK *sock)
{

 if (sock == ((void*)0))
 {
  return INFINITE;
 }
 if (sock->Type != SOCK_TCP && sock->Type != SOCK_INPROC)
 {
  return INFINITE;
 }

 return sock->TimeOut;
}
