
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_16__ {TYPE_1__* CurrentIkeSa; scalar_t__ ServerPort; int ServerIP; scalar_t__ ClientPort; int ClientIP; } ;
struct TYPE_15__ {scalar_t__ InitiatorCookie; scalar_t__ ResponderCookie; } ;
struct TYPE_14__ {scalar_t__ InitiatorCookie; scalar_t__ ResponderCookie; TYPE_5__* IkeClient; } ;
struct TYPE_13__ {int IkeSaList; int ClientList; } ;
struct TYPE_12__ {scalar_t__ InitiatorCookie; scalar_t__ ResponderCookie; } ;
typedef int IP ;
typedef TYPE_2__ IKE_SERVER ;
typedef TYPE_3__ IKE_SA ;
typedef TYPE_4__ IKE_PACKET ;
typedef TYPE_5__ IKE_CLIENT ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 int Copy (int *,int *,int) ;
 scalar_t__ IPSEC_PORT_IPSEC_ESP_UDP ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 TYPE_5__* Search (int ,TYPE_5__*) ;

IKE_CLIENT *SearchIkeClientForIkePacket(IKE_SERVER *ike, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port, IKE_PACKET *pr)
{
 IKE_CLIENT t;
 IKE_CLIENT *c = ((void*)0);

 if (ike == ((void*)0) || pr == ((void*)0) || client_ip == ((void*)0) || server_ip == ((void*)0) || client_port == 0 || server_port == 0)
 {
  return ((void*)0);
 }

 if (1)
 {
  UINT i;

  if (pr->InitiatorCookie != 0 && pr->ResponderCookie != 0)
  {
   for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
   {
    IKE_SA *sa = LIST_DATA(ike->IkeSaList, i);


    if (sa->InitiatorCookie == pr->InitiatorCookie && sa->ResponderCookie == pr->ResponderCookie)
    {
     IKE_CLIENT *cc = sa->IkeClient;

     if (CmpIpAddr(&cc->ServerIP, server_ip) == 0 &&
      CmpIpAddr(&cc->ClientIP, client_ip) == 0)
     {
      c = cc;
      break;
     }
    }
   }
  }
 }

 if (c == ((void*)0))
 {

  Copy(&t.ClientIP, client_ip, sizeof(IP));
  t.ClientPort = client_port;
  Copy(&t.ServerIP, server_ip, sizeof(IP));
  t.ServerPort = server_port;

  c = Search(ike->ClientList, &t);

  if (c != ((void*)0))
  {

   bool ok = 0;
   UINT i;

   if (server_port == IPSEC_PORT_IPSEC_ESP_UDP)
   {

    ok = 1;
   }
   else
   {
    if (c->CurrentIkeSa != ((void*)0) &&
     c->CurrentIkeSa->InitiatorCookie == pr->InitiatorCookie &&
     c->CurrentIkeSa->ResponderCookie == pr->ResponderCookie)
    {
     ok = 1;
    }
    else
    {
     for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
     {
      IKE_SA *sa = LIST_DATA(ike->IkeSaList, i);

      if (sa->IkeClient == c)
      {
       if (sa->InitiatorCookie == pr->InitiatorCookie &&
        sa->ResponderCookie == pr->ResponderCookie)
       {
        ok = 1;
        break;
       }
      }
     }
    }
   }

   if (ok == 0)
   {

    c = ((void*)0);
   }
  }
 }

 return c;
}
