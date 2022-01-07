
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ Type; int Connected; int ListenMode; scalar_t__ socket; int SecureMode; int WriteBlocked; scalar_t__ AsyncMode; int lock; int SendNum; int SendSize; } ;
typedef scalar_t__ SOCKET ;
typedef TYPE_1__ SOCK ;


 int Disconnect (TYPE_1__*) ;
 scalar_t__ EAGAIN ;
 scalar_t__ INVALID_SOCKET ;
 int Lock (int ) ;
 int MAX_SEND_BUF_MEM_SIZE ;
 scalar_t__ MIN (scalar_t__,int ) ;
 int SOCKET_ERROR ;
 scalar_t__ SOCK_INPROC ;
 scalar_t__ SOCK_LATER ;
 scalar_t__ SOCK_TCP ;
 scalar_t__ SecureSend (TYPE_1__*,void*,scalar_t__) ;
 scalar_t__ SendInProc (TYPE_1__*,void*,scalar_t__) ;
 int Unlock (int ) ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ errno ;
 int send (scalar_t__,void*,scalar_t__,int ) ;

UINT Send(SOCK *sock, void *data, UINT size, bool secure)
{
 SOCKET s;
 int ret;

 if (sock == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return 0;
 }
 if (sock->Type == SOCK_INPROC)
 {
  return SendInProc(sock, data, size);
 }
 size = MIN(size, MAX_SEND_BUF_MEM_SIZE);
 if (sock->Type != SOCK_TCP || sock->Connected == 0 || sock->ListenMode != 0 ||
  sock->socket == INVALID_SOCKET)
 {
  return 0;
 }
 if (secure != 0 && sock->SecureMode == 0)
 {
  return 0;
 }

 if (secure)
 {
  return SecureSend(sock, data, size);
 }


 s = sock->socket;
 ret = send(s, data, size, 0);
 if (ret > 0)
 {

  Lock(sock->lock);
  {
   sock->SendSize += (UINT64)ret;
   sock->SendNum++;
  }
  Unlock(sock->lock);
  sock->WriteBlocked = 0;
  return (UINT)ret;
 }


 if (sock->AsyncMode)
 {

  if (ret == SOCKET_ERROR)
  {
   if (errno == EAGAIN)
   {

    sock->WriteBlocked = 1;
    return SOCK_LATER;
   }

  }
 }


 Disconnect(sock);
 return 0;
}
