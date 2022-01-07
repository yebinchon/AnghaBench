
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ SrcPort; int DstIP; int SrcIP; } ;
typedef TYPE_1__ UDPPACKET ;
struct TYPE_9__ {int HasError; scalar_t__ Port; int IpAddress; int * Sock; } ;
typedef TYPE_2__ UDPLISTENER_SOCK ;
struct TYPE_10__ {int SockList; } ;
typedef TYPE_3__ UDPLISTENER ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 scalar_t__ IsIP4 (int *) ;
 scalar_t__ IsIP6 (int *) ;
 scalar_t__ IsZeroIP (int *) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

UDPLISTENER_SOCK *DetermineUdpSocketForSending(UDPLISTENER *u, UDPPACKET *p)
{
 UINT i;

 if (u == ((void*)0) || p == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(u->SockList);i++)
 {
  UDPLISTENER_SOCK *us = LIST_DATA(u->SockList, i);

  if (us->Sock != ((void*)0) && us->HasError == 0)
  {
   if (us->Port == p->SrcPort)
   {
    if (CmpIpAddr(&us->IpAddress, &p->SrcIP) == 0)
    {
     return us;
    }
   }
  }
 }

 for (i = 0;i < LIST_NUM(u->SockList);i++)
 {
  UDPLISTENER_SOCK *us = LIST_DATA(u->SockList, i);

  if (us->Sock != ((void*)0) && us->HasError == 0)
  {
   if (us->Port == p->SrcPort)
   {
    if (IsZeroIP(&us->IpAddress))
    {
     if ((IsIP4(&p->DstIP) && IsIP4(&us->IpAddress)) ||
      (IsIP6(&p->DstIP) && IsIP6(&us->IpAddress)))
     {
      return us;
     }
    }
   }
  }
 }

 return ((void*)0);
}
