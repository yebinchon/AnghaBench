
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int server_ip_str ;
typedef int client_ip_str ;
typedef void* UINT ;
struct TYPE_10__ {int FirstCommTick; int LastCommTick; void* ServerPort; int TransportModeClientIP; int TransportModeServerIP; int ServerIP; void* ClientPort; int ClientIP; scalar_t__ Id; } ;
struct TYPE_9__ {int Now; scalar_t__ CurrentIkeClientId; } ;
typedef int IP ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ IKE_CLIENT ;


 int Copy (int *,int *,int) ;
 int Debug (char*,TYPE_2__*,char*,void*,char*,void*) ;
 int IPToStr (char*,int,int *) ;
 int IPsecLog (TYPE_1__*,TYPE_2__*,int *,int *,char*) ;
 int MAX_SIZE ;
 TYPE_2__* ZeroMalloc (int) ;

IKE_CLIENT *NewIkeClient(IKE_SERVER *ike, IP *client_ip, UINT client_port, IP *server_ip, UINT server_port)
{
 IKE_CLIENT *c;
 char client_ip_str[MAX_SIZE];
 char server_ip_str[MAX_SIZE];

 if (ike == ((void*)0) || client_ip == ((void*)0) || server_ip == ((void*)0) || client_port == 0 || server_port == 0)
 {
  return ((void*)0);
 }

 c = ZeroMalloc(sizeof(IKE_CLIENT));

 c->Id = ++ike->CurrentIkeClientId;

 Copy(&c->ClientIP, client_ip, sizeof(IP));
 c->ClientPort = client_port;

 Copy(&c->ServerIP, server_ip, sizeof(IP));
 Copy(&c->TransportModeServerIP, server_ip, sizeof(IP));
 Copy(&c->TransportModeClientIP, client_ip, sizeof(IP));
 c->ServerPort = server_port;

 c->LastCommTick = ike->Now;
 c->FirstCommTick = ike->Now;

 IPToStr(client_ip_str, sizeof(client_ip_str), client_ip);
 IPToStr(server_ip_str, sizeof(server_ip_str), server_ip);

 Debug("New IKE_CLIENT: %p: %s:%u -> %s:%u\n", c, client_ip_str, client_port, server_ip_str, server_port);

 IPsecLog(ike, c, ((void*)0), ((void*)0), "LI_NEW_IKE_CLIENT");

 return c;
}
