
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_port; int sin6_scope_id; int sin6_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int addr ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {int ipv6_scope_id; } ;
struct TYPE_6__ {int IgnoreRecvErr; scalar_t__ Type; scalar_t__ socket; scalar_t__ LocalPort; int lock; int RecvSize; int RecvNum; scalar_t__ IsRawSocket; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ IP ;


 int Debug (char*,scalar_t__) ;
 scalar_t__ EAGAIN ;
 scalar_t__ ECONNREFUSED ;
 scalar_t__ ECONNRESET ;
 scalar_t__ EINTR ;
 scalar_t__ EMSGSIZE ;
 scalar_t__ ENOBUFS ;
 scalar_t__ ENOMEM ;
 scalar_t__ INVALID_SOCKET ;
 int InAddrToIP6 (TYPE_2__*,int *) ;
 int Lock (int ) ;
 scalar_t__ SOCK_LATER ;
 scalar_t__ SOCK_UDP ;
 int Unlock (int ) ;
 scalar_t__ WSAEADDRNOTAVAIL ;
 scalar_t__ WSAECONNRESET ;
 scalar_t__ WSAEHOSTUNREACH ;
 scalar_t__ WSAEINPROGRESS ;
 scalar_t__ WSAEMSGSIZE ;
 scalar_t__ WSAENETRESET ;
 scalar_t__ WSAENETUNREACH ;
 scalar_t__ WSAENOBUFS ;
 scalar_t__ WSAEUSERS ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ errno ;
 scalar_t__ ntohs (int ) ;
 int recvfrom (scalar_t__,void*,scalar_t__,int ,struct sockaddr*,int*) ;
 scalar_t__ strerror (scalar_t__) ;

UINT RecvFrom6(SOCK *sock, IP *src_addr, UINT *src_port, void *data, UINT size)
{
 struct sockaddr_in6 addr;
 int ret = 0;



 socklen_t socklen = sizeof(addr);



 if (sock != ((void*)0))
 {
  sock->IgnoreRecvErr = 0;
 }
 else
 {
  return 0;
 }

 if (src_addr == ((void*)0) || src_port == ((void*)0) || data == ((void*)0) || size == 0)
 {
  return 0;
 }

 if (sock->Type != SOCK_UDP || sock->socket == INVALID_SOCKET)
 {
  return 0;
 }


 ret = recvfrom(sock->socket, data, size, 0, (struct sockaddr *)&addr, &socklen);
 if (ret > 0)
 {
  InAddrToIP6(src_addr, &addr.sin6_addr);
  src_addr->ipv6_scope_id = addr.sin6_scope_id;
  *src_port = (UINT)ntohs(addr.sin6_port);
  if (sock->IsRawSocket)
  {
   *src_port = sock->LocalPort;
  }

  Lock(sock->lock);
  {
   sock->RecvNum++;
   sock->RecvSize += (UINT64)ret;
  }
  Unlock(sock->lock);

  return (UINT)ret;
 }
 else
 {
  if (errno == ECONNREFUSED || errno == ECONNRESET || errno == EMSGSIZE || errno == ENOBUFS || errno == ENOMEM || errno == EINTR)
  {
   sock->IgnoreRecvErr = 1;
  }
  else if (errno == EAGAIN)
  {
   return SOCK_LATER;
  }
  else
  {
   Debug("RecvFrom(): recvfrom() failed with error: %s\n", strerror(errno));
  }

  return 0;
 }
}
