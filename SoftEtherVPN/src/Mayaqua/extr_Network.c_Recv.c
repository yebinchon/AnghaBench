
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int NoNeedToRead; scalar_t__ Type; int Connected; int ListenMode; scalar_t__ socket; int SecureMode; int AsyncMode; int lock; int SendNum; int RecvSize; scalar_t__ CallingThread; } ;
typedef int SOCKET_TIMEOUT_PARAM ;
typedef scalar_t__ SOCKET ;
typedef TYPE_1__ SOCK ;


 int Disconnect (TYPE_1__*) ;
 scalar_t__ EAGAIN ;
 int FreeSocketTimeout (int *) ;
 scalar_t__ INVALID_SOCKET ;
 int Lock (int ) ;
 int * NewSocketTimeout (TYPE_1__*) ;
 scalar_t__ RecvInProc (TYPE_1__*,void*,scalar_t__) ;
 int SOCKET_ERROR ;
 scalar_t__ SOCK_INPROC ;
 scalar_t__ SOCK_LATER ;
 scalar_t__ SOCK_TCP ;
 scalar_t__ SecureRecv (TYPE_1__*,void*,scalar_t__) ;
 int Unlock (int ) ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ errno ;
 scalar_t__ pthread_self () ;
 int recv (scalar_t__,void*,scalar_t__,int ) ;

UINT Recv(SOCK *sock, void *data, UINT size, bool secure)
{
 SOCKET s;
 int ret;






 if (sock == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return 0;
 }

 sock->NoNeedToRead = 0;

 if (sock->Type == SOCK_INPROC)
 {
  return RecvInProc(sock, data, size);
 }
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
  return SecureRecv(sock, data, size);
 }


 s = sock->socket;
 ret = recv(s, data, size, 0);
 if (ret > 0)
 {

  Lock(sock->lock);
  {
   sock->RecvSize += (UINT64)ret;
   sock->SendNum++;
  }
  Unlock(sock->lock);
  return (UINT)ret;
 }


 if (sock->AsyncMode)
 {

  if (ret == SOCKET_ERROR)
  {
   if (errno == EAGAIN)
   {

    return SOCK_LATER;
   }

  }
 }


 Disconnect(sock);
 return 0;
}
