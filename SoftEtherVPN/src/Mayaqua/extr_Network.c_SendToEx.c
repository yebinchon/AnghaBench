
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int yes ;
struct sockaddr_in {int sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;
typedef int USHORT ;
typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_10__ {int* addr; } ;
struct TYPE_9__ {int IgnoreSendErr; int IsRawSocket; scalar_t__ Type; scalar_t__ socket; int UdpBroadcast; int lock; int SendNum; int SendSize; scalar_t__ IPv6; } ;
typedef scalar_t__ SOCKET ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ IP ;


 int AF_INET ;
 int Debug (char*,int) ;
 scalar_t__ EAGAIN ;
 scalar_t__ ECONNREFUSED ;
 scalar_t__ ECONNRESET ;
 scalar_t__ EINTR ;
 scalar_t__ EMSGSIZE ;
 scalar_t__ ENOBUFS ;
 scalar_t__ ENOMEM ;
 scalar_t__ INVALID_SOCKET ;
 int IPToInAddr (int *,TYPE_2__*) ;
 int IsIP4 (TYPE_2__*) ;
 int Lock (int ) ;
 int SOCK_LATER ;
 scalar_t__ SOCK_UDP ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int SendTo6Ex (TYPE_1__*,TYPE_2__*,int,void*,int,int) ;
 int Unlock (int ) ;
 scalar_t__ WSAEADDRNOTAVAIL ;
 scalar_t__ WSAECONNRESET ;
 scalar_t__ WSAEHOSTUNREACH ;
 scalar_t__ WSAEINPROGRESS ;
 scalar_t__ WSAEINVAL ;
 scalar_t__ WSAEMSGSIZE ;
 scalar_t__ WSAENETRESET ;
 scalar_t__ WSAENETUNREACH ;
 scalar_t__ WSAENOBUFS ;
 scalar_t__ WSAEUSERS ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 int Zero (struct sockaddr_in*,int) ;
 scalar_t__ errno ;
 int htons (int ) ;
 int sendto (scalar_t__,void*,int,int ,struct sockaddr*,int) ;
 int setsockopt (scalar_t__,int ,int ,char*,int) ;

UINT SendToEx(SOCK *sock, IP *dest_addr, UINT dest_port, void *data, UINT size, bool broadcast)
{
 SOCKET s;
 int ret;
 struct sockaddr_in addr;

 if (sock != ((void*)0))
 {
  sock->IgnoreSendErr = 0;
 }
 if (sock == ((void*)0) || dest_addr == ((void*)0) || (sock->IsRawSocket == 0 && dest_port == 0) || data == ((void*)0))
 {
  return 0;
 }
 if (dest_port >= 65536 && sock->IsRawSocket == 0)
 {
  return 0;
 }
 if (sock->Type != SOCK_UDP || sock->socket == INVALID_SOCKET)
 {
  return 0;
 }
 if (size == 0)
 {
  return 0;
 }

 if (sock->IPv6)
 {
  return SendTo6Ex(sock, dest_addr, dest_port, data, size, broadcast);
 }

 if (IsIP4(dest_addr) == 0)
 {
  return 0;
 }

 s = sock->socket;
 Zero(&addr, sizeof(addr));
 addr.sin_family = AF_INET;
 if (sock->IsRawSocket == 0)
 {
  addr.sin_port = htons((USHORT)dest_port);
 }
 IPToInAddr(&addr.sin_addr, dest_addr);

 if ((dest_addr->addr[0] == 255 && dest_addr->addr[1] == 255 &&
  dest_addr->addr[2] == 255 && dest_addr->addr[3] == 255) ||
  (dest_addr->addr[0] >= 224 && dest_addr->addr[0] <= 239)
  || broadcast)
 {
  if (sock->UdpBroadcast == 0)
  {
   bool yes = 1;

   sock->UdpBroadcast = 1;

   (void)setsockopt(s, SOL_SOCKET, SO_BROADCAST, (char *)&yes, sizeof(yes));
  }
 }

 ret = sendto(s, data, size, 0, (struct sockaddr *)&addr, sizeof(addr));
 if (ret != (int)size)
 {
  sock->IgnoreSendErr = 0;
  if (errno == ECONNREFUSED || errno == ECONNRESET || errno == EMSGSIZE || errno == ENOBUFS || errno == ENOMEM || errno == EINTR)
  {
   sock->IgnoreSendErr = 1;
  }
  else if (errno == EAGAIN)
  {
   return SOCK_LATER;
  }

  return 0;
 }

 Lock(sock->lock);
 {
  sock->SendSize += (UINT64)size;
  sock->SendNum++;
 }
 Unlock(sock->lock);

 return ret;
}
