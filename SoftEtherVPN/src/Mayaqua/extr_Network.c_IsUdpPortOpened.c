
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int HasError; scalar_t__ Port; int IpAddress; int * Sock; } ;
typedef TYPE_1__ UDPLISTENER_SOCK ;
struct TYPE_6__ {int SockList; } ;
typedef TYPE_2__ UDPLISTENER ;
typedef int IP ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 scalar_t__ IsZeroIP (int *) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

bool IsUdpPortOpened(UDPLISTENER *u, IP *server_ip, UINT port)
{
 UINT i;

 if (u == ((void*)0) || port == 0)
 {
  return 0;
 }

 if (server_ip != ((void*)0))
 {
  for (i = 0;i < LIST_NUM(u->SockList);i++)
  {
   UDPLISTENER_SOCK *us = LIST_DATA(u->SockList, i);

   if (us->Sock != ((void*)0) && us->HasError == 0)
   {
    if (us->Port == port)
    {
     if (CmpIpAddr(server_ip, &us->IpAddress) == 0)
     {
      return 1;
     }
    }
   }
  }
 }

 for (i = 0;i < LIST_NUM(u->SockList);i++)
 {
  UDPLISTENER_SOCK *us = LIST_DATA(u->SockList, i);

  if (us->Sock != ((void*)0) && us->HasError == 0)
  {
   if (us->Port == port)
   {
    if (IsZeroIP(&us->IpAddress))
    {
     return 1;
    }
   }
  }
 }

 return 0;
}
