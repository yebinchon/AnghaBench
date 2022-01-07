
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct sockaddr_in6 {int sin6_scope_id; struct in6_addr sin6_addr; int sin6_port; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {struct in_addr sin_addr; int sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int sockaddr6 ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int ipv6_scope_id; } ;
struct TYPE_5__ {scalar_t__ Type; int IsTtlSupported; int lock; scalar_t__ CurrentTtl; scalar_t__ IPv6; int socket; scalar_t__ UdpMaxMsgSize; int RawSocketIPProtocol; scalar_t__ RemotePort; scalar_t__ LocalPort; scalar_t__ IsRawSocket; TYPE_3__ LocalIP; TYPE_3__ RemoteIP; } ;
typedef TYPE_1__ SOCK ;
typedef scalar_t__ DWORD ;


 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 scalar_t__ IPV6_UNICAST_HOPS ;
 scalar_t__ IP_TTL ;
 int InAddrToIP (TYPE_3__*,struct in_addr*) ;
 int InAddrToIP6 (TYPE_3__*,struct in6_addr*) ;
 int Lock (int ) ;
 scalar_t__ MAKE_SPECIAL_PORT (int ) ;
 scalar_t__ SOCK_TCP ;
 scalar_t__ SOCK_UDP ;
 int SOL_SOCKET ;
 scalar_t__ SO_MAX_MSG_SIZE ;
 scalar_t__ UDP_MAX_MSG_SIZE_DEFAULT ;
 int Unlock (int ) ;
 scalar_t__ getpeername (int ,struct sockaddr*,int*) ;
 scalar_t__ getsockname (int ,struct sockaddr*,int*) ;
 scalar_t__ getsockopt (int ,int ,scalar_t__,char*,int*) ;
 scalar_t__ ntohs (int ) ;

void QuerySocketInformation(SOCK *sock)
{

 if (sock == ((void*)0))
 {
  return;
 }

 Lock(sock->lock);
 {
  struct sockaddr_in6 sockaddr6;
  struct in6_addr *addr6;
  int size;
  DWORD dw;
  UINT opt_value = 0;

  if (sock->Type == SOCK_TCP)
  {

   size = sizeof(sockaddr6);
   if (getpeername(sock->socket, (struct sockaddr *)&sockaddr6, (int *)&size) == 0)
   {
    if (size >= sizeof(struct sockaddr_in6))
    {
     sock->RemotePort = (UINT)ntohs(sockaddr6.sin6_port);
     addr6 = &sockaddr6.sin6_addr;
     InAddrToIP6(&sock->RemoteIP, addr6);
     sock->RemoteIP.ipv6_scope_id = sockaddr6.sin6_scope_id;
    }
    else
    {
     struct sockaddr_in *sockaddr;
     struct in_addr *addr;

     sockaddr = (struct sockaddr_in *)&sockaddr6;
     sock->RemotePort = (UINT)ntohs(sockaddr->sin_port);
     addr = &sockaddr->sin_addr;
     InAddrToIP(&sock->RemoteIP, addr);
    }
   }
  }


  size = sizeof(sockaddr6);
  if (getsockname(sock->socket, (struct sockaddr *)&sockaddr6, (int *)&size) == 0)
  {
   if (size >= sizeof(struct sockaddr_in6))
   {
    sock->LocalPort = (UINT)ntohs(sockaddr6.sin6_port);
    addr6 = &sockaddr6.sin6_addr;
    InAddrToIP6(&sock->LocalIP, addr6);
    sock->LocalIP.ipv6_scope_id = sockaddr6.sin6_scope_id;
   }
   else
   {
    struct sockaddr_in *sockaddr;
    struct in_addr *addr;

    sockaddr = (struct sockaddr_in *)&sockaddr6;
    sock->LocalPort = (UINT)ntohs(sockaddr->sin_port);
    addr = &sockaddr->sin_addr;
    InAddrToIP(&sock->LocalIP, addr);
   }
  }

  if (sock->IsRawSocket)
  {
   sock->LocalPort = sock->RemotePort = MAKE_SPECIAL_PORT(sock->RawSocketIPProtocol);
  }

  if (sock->Type == SOCK_UDP)
  {
   sock->UdpMaxMsgSize = UDP_MAX_MSG_SIZE_DEFAULT;
  }

  if (sock->IPv6)
  {



  }
  else
  {



  }


  size = sizeof(DWORD);
  if (opt_value == 0 ||
   getsockopt(sock->socket, (sock->IPv6 ? IPPROTO_IPV6 : IPPROTO_IP), opt_value, (char *)&dw, &size) != 0)
  {
   sock->IsTtlSupported = 0;
  }
  else
  {
   sock->IsTtlSupported = 1;
   sock->CurrentTtl = dw;
  }
 }
 Unlock(sock->lock);
}
