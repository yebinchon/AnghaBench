
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {scalar_t__ Type; int Connected; int ListenMode; scalar_t__ socket; scalar_t__ AsyncMode; } ;
typedef scalar_t__ SOCKET ;
typedef TYPE_1__ SOCK ;


 scalar_t__ INVALID_SOCKET ;
 int MSG_PEEK ;
 scalar_t__ SOCK_INPROC ;
 scalar_t__ SOCK_TCP ;
 int recv (scalar_t__,void*,int,int ) ;

UINT Peek(SOCK *sock, void *data, UINT size)
{
 SOCKET s;
 int ret;


 if (sock == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return 0;
 }
 if (sock->Type == SOCK_INPROC)
 {
  return 0;
 }
 if (sock->Type != SOCK_TCP || sock->Connected == 0 || sock->ListenMode != 0 ||
  sock->socket == INVALID_SOCKET)
 {
  return 0;
 }
 if (sock->AsyncMode)
 {
  return 0;
 }


 s = sock->socket;

 ret = recv(s, data, size, MSG_PEEK);



 if (ret > 0)
 {
  return ret;
 }

 return 0;
}
