
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int server_ip_str ;
typedef int client_ip_str ;
typedef scalar_t__ UINT ;
struct TYPE_22__ {int sorted; } ;
struct TYPE_21__ {scalar_t__ ClientPort; scalar_t__ ServerPort; int Deleting; int ServerIP; int ClientIP; int Id; scalar_t__ LastCommTick; int FirstCommTick; int ClientId; int * L2TP; } ;
struct TYPE_20__ {TYPE_4__* IkeClient; } ;
struct TYPE_19__ {TYPE_9__* ClientList; int IPsecSaList; int IkeSaList; } ;
struct TYPE_18__ {TYPE_4__* IkeClient; } ;
typedef TYPE_1__ IPSECSA ;
typedef int IP ;
typedef TYPE_2__ IKE_SERVER ;
typedef TYPE_3__ IKE_SA ;
typedef TYPE_4__ IKE_CLIENT ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 int Copy (int *,int *,int) ;
 int Debug (char*,TYPE_4__*,...) ;
 int Delete (TYPE_9__*,TYPE_4__*) ;
 int FreeIkeClient (TYPE_2__*,TYPE_4__*) ;
 int IPToStr (char*,int,int *) ;
 int IPsecLog (TYPE_2__*,TYPE_4__*,int *,int *,char*,...) ;
 scalar_t__ IS_SPECIAL_PORT (scalar_t__) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int MAX_SIZE ;
 int MIN (int ,int ) ;
 TYPE_4__* Search (TYPE_9__*,TYPE_4__*) ;
 int StrCpy (int ,int,int ) ;

IKE_CLIENT *SetIkeClientEndpoint(IKE_SERVER *ike, IKE_CLIENT *c, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port)
{
 char client_ip_str[MAX_SIZE];
 char server_ip_str[MAX_SIZE];
 IKE_CLIENT *ret = c;
 IKE_CLIENT *cc;
 IKE_CLIENT t;

 if (ike == ((void*)0) || c == ((void*)0) || client_ip == ((void*)0) || client_port == 0 || server_ip == ((void*)0) || server_port == 0)
 {
  return ((void*)0);
 }

 if (CmpIpAddr(&c->ClientIP, client_ip) == 0 &&
  CmpIpAddr(&c->ServerIP, server_ip) == 0 &&
  c->ClientPort == client_port &&
  c->ServerPort == server_port)
 {

  return ret;
 }

 if (IS_SPECIAL_PORT(client_port) || IS_SPECIAL_PORT(server_port))
 {

  return ret;
 }


 Copy(&t.ClientIP, client_ip, sizeof(IP));
 t.ClientPort = client_port;
 Copy(&t.ServerIP, server_ip, sizeof(IP));
 t.ServerPort = server_port;

 cc = Search(ike->ClientList, &t);
 if (cc != ((void*)0) && c != cc && cc->Deleting == 0 && c->L2TP == ((void*)0))
 {
  UINT i;

  for (i = 0;i < LIST_NUM(ike->IkeSaList);i++)
  {
   IKE_SA *sa = LIST_DATA(ike->IkeSaList, i);

   if (sa->IkeClient == c)
   {
    sa->IkeClient = cc;
   }
  }
  for (i = 0;i < LIST_NUM(ike->IPsecSaList);i++)
  {
   IPSECSA *sa = LIST_DATA(ike->IPsecSaList, i);

   if (sa->IkeClient == c)
   {
    sa->IkeClient = cc;
   }
  }

  if (cc->LastCommTick < c->LastCommTick)
  {
   StrCpy(cc->ClientId, sizeof(cc->ClientId), c->ClientId);
  }

  cc->FirstCommTick = MIN(cc->FirstCommTick, c->FirstCommTick);
  cc->LastCommTick = MAX(cc->LastCommTick, c->LastCommTick);

  ret = cc;

  IPToStr(client_ip_str, sizeof(client_ip_str), client_ip);
  IPToStr(server_ip_str, sizeof(server_ip_str), server_ip);

  Debug("Merge IKE_CLIENT: %p->%p: %s:%u -> %s:%u\n", c, cc, client_ip_str, client_port, server_ip_str, server_port);

  IPsecLog(ike, c, ((void*)0), ((void*)0), "LI_CLIENT_MERGE", c->Id, cc->Id, cc->Id);


  Delete(ike->ClientList, c);
  FreeIkeClient(ike, c);
 }
 else
 {

  Copy(&c->ClientIP, client_ip, sizeof(IP));
  Copy(&c->ServerIP, server_ip, sizeof(IP));
  c->ClientPort = client_port;
  c->ServerPort = server_port;

  IPToStr(client_ip_str, sizeof(client_ip_str), client_ip);
  IPToStr(server_ip_str, sizeof(server_ip_str), server_ip);

  Debug("Update IKE_CLIENT: %p: %s:%u -> %s:%u\n", c, client_ip_str, client_port, server_ip_str, server_port);

  IPsecLog(ike, c, ((void*)0), ((void*)0), "LI_CLIENT_UPDATE");

  ike->ClientList->sorted = 0;
 }

 return ret;
}
