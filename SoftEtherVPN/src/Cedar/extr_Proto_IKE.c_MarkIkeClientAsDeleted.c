
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int server_ip_str ;
typedef int client_ip_str ;
struct TYPE_9__ {int Deleting; int ServerPort; int ClientPort; int ServerIP; int ClientIP; } ;
struct TYPE_8__ {int StateHasChanged; } ;
typedef TYPE_1__ IKE_SERVER ;
typedef TYPE_2__ IKE_CLIENT ;


 int Debug (char*,TYPE_2__*,char*,int ,char*,int ) ;
 int IPToStr (char*,int,int *) ;
 int IPsecLog (TYPE_1__*,TYPE_2__*,int *,int *,char*) ;
 int MAX_SIZE ;

void MarkIkeClientAsDeleted(IKE_SERVER *ike, IKE_CLIENT *c)
{
 char client_ip_str[MAX_SIZE];
 char server_ip_str[MAX_SIZE];

 if (ike == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 if (c->Deleting)
 {
  return;
 }

 ike->StateHasChanged = 1;

 c->Deleting = 1;

 IPToStr(client_ip_str, sizeof(client_ip_str), &c->ClientIP);
 IPToStr(server_ip_str, sizeof(server_ip_str), &c->ServerIP);

 Debug("Deleting IKE_CLIENT: %p: %s:%u -> %s:%u\n", c, client_ip_str, c->ClientPort, server_ip_str, c->ServerPort);

 IPsecLog(ike, c, ((void*)0), ((void*)0), "LI_DELETE_IKE_CLIENT");
}
