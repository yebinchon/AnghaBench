
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gateway_ip ;
typedef int dest_mask ;
typedef int dest_ip ;
typedef int UINT ;
struct TYPE_3__ {int PPPConnection; int LocalRouting; int InterfaceID; int OldIfMetric; int Metric; int GatewayIP; int DestMask; int DestIP; } ;
typedef TYPE_1__ ROUTE_ENTRY ;


 int Format (char*,int ,char*,char*,char*,char*,int ,int ,int ,int ,int ) ;
 int IPToStr (char*,int,int *) ;
 int MAX_PATH ;

void RouteToStr(char *str, UINT str_size, ROUTE_ENTRY *e)
{
 char dest_ip[MAX_PATH];
 char dest_mask[MAX_PATH];
 char gateway_ip[MAX_PATH];

 if (str == ((void*)0) || e == ((void*)0))
 {
  return;
 }

 IPToStr(dest_ip, sizeof(dest_ip), &e->DestIP);
 IPToStr(dest_mask, sizeof(dest_mask), &e->DestMask);
 IPToStr(gateway_ip, sizeof(gateway_ip), &e->GatewayIP);

 Format(str, str_size, "%s/%s %s m=%u oif=%u if=%u lo=%u p=%u",
  dest_ip, dest_mask, gateway_ip,
  e->Metric, e->OldIfMetric, e->InterfaceID,
  e->LocalRouting, e->PPPConnection);
}
