
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int ClientList; } ;
typedef int IP ;
typedef TYPE_1__ IKE_SERVER ;
typedef int IKE_PACKET ;
typedef int IKE_CLIENT ;


 scalar_t__ GetNumberOfIkeClientsFromIP (TYPE_1__*,int *) ;
 scalar_t__ IKE_QUOTA_MAX_NUM_CLIENTS ;
 scalar_t__ IKE_QUOTA_MAX_NUM_CLIENTS_PER_IP ;
 int Insert (int ,int *) ;
 scalar_t__ LIST_NUM (int ) ;
 int * NewIkeClient (TYPE_1__*,int *,int ,int *,int ) ;
 int * SearchIkeClientForIkePacket (TYPE_1__*,int *,int ,int *,int ,int *) ;
 int * SetIkeClientEndpoint (TYPE_1__*,int *,int *,int ,int *,int ) ;

IKE_CLIENT *SearchOrCreateNewIkeClientForIkePacket(IKE_SERVER *ike, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port, IKE_PACKET *pr)
{
 IKE_CLIENT *c;

 if (ike == ((void*)0) || pr == ((void*)0) || client_ip == ((void*)0) || server_ip == ((void*)0) || client_port == 0 || server_port == 0)
 {
  return ((void*)0);
 }

 c = SearchIkeClientForIkePacket(ike, client_ip, client_port, server_ip, server_port, pr);
 if (c == ((void*)0))
 {
  if (GetNumberOfIkeClientsFromIP(ike, client_ip) > IKE_QUOTA_MAX_NUM_CLIENTS_PER_IP ||
   LIST_NUM(ike->ClientList) > IKE_QUOTA_MAX_NUM_CLIENTS)
  {
   return ((void*)0);
  }


  c = NewIkeClient(ike, client_ip, client_port, server_ip, server_port);

  Insert(ike->ClientList, c);
 }

 return SetIkeClientEndpoint(ike, c, client_ip, client_port, server_ip, server_port);
}
