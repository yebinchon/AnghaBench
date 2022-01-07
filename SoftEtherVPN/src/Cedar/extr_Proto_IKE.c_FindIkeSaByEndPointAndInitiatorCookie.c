
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ ClientPort; scalar_t__ ServerPort; int ServerIP; int ClientIP; } ;
struct TYPE_8__ {scalar_t__ InitiatorCookie; scalar_t__ Mode; TYPE_3__* IkeClient; } ;
struct TYPE_7__ {int IkeSaList; } ;
typedef int IP ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ IKE_SA ;
typedef TYPE_3__ IKE_CLIENT ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

IKE_SA *FindIkeSaByEndPointAndInitiatorCookie(IKE_SERVER *ike, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port, UINT64 init_cookie, UINT mode)
{
 UINT i;

 if (ike == ((void*)0) || client_ip == ((void*)0) || server_ip == ((void*)0) || client_port == 0 || server_port == 0 || init_cookie == 0)
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
 {
  IKE_SA *sa = LIST_DATA(ike->IkeSaList, i);
  IKE_CLIENT *c;

  c = sa->IkeClient;

  if (CmpIpAddr(&c->ClientIP, client_ip) == 0 &&
   CmpIpAddr(&c->ServerIP, server_ip) == 0 &&
   c->ClientPort == client_port &&
   c->ServerPort == server_port &&
   sa->InitiatorCookie == init_cookie &&
   sa->Mode == mode)
  {
   return sa;
  }
 }

 return ((void*)0);
}
