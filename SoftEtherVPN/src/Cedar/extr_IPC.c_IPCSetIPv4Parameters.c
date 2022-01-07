
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int NumExistingRoutes; } ;
struct TYPE_14__ {int ClasslessRoute; int BroadcastAddress; int DefaultGateway; int SubnetMask; int ClientIPAddress; } ;
typedef TYPE_1__ IPC ;
typedef TYPE_2__ IP ;
typedef TYPE_2__ DHCP_CLASSLESS_ROUTE_TABLE ;


 scalar_t__ Cmp (int *,TYPE_2__*,int) ;
 scalar_t__ CmpIpAddr (int *,TYPE_2__*) ;
 int Copy (int *,TYPE_2__*,int) ;
 int GetBroadcastAddress4 (int *,TYPE_2__*,TYPE_2__*) ;
 int IsZeroIP (int *) ;
 int Zero (int *,int) ;

bool IPCSetIPv4Parameters(IPC *ipc, IP *ip, IP *subnet, IP *gw, DHCP_CLASSLESS_ROUTE_TABLE *rt)
{
 bool changed = 0;

 if (ipc == ((void*)0) || ip == ((void*)0) || subnet == ((void*)0))
 {
  return 0;
 }

 if (CmpIpAddr(&ipc->ClientIPAddress, ip) != 0)
 {
  changed = 1;
 }
 Copy(&ipc->ClientIPAddress, ip, sizeof(IP));

 if (CmpIpAddr(&ipc->SubnetMask, subnet) != 0)
 {
  changed = 1;
 }
 Copy(&ipc->SubnetMask, subnet, sizeof(IP));

 if (gw != ((void*)0))
 {
  if (CmpIpAddr(&ipc->DefaultGateway, gw) != 0)
  {
   changed = 1;
  }

  Copy(&ipc->DefaultGateway, gw, sizeof(IP));
 }
 else
 {
  if (IsZeroIP(&ipc->DefaultGateway) == 0)
  {
   changed = 1;
  }

  Zero(&ipc->DefaultGateway, sizeof(IP));
 }

 GetBroadcastAddress4(&ipc->BroadcastAddress, ip, subnet);

 if (rt != ((void*)0) && rt->NumExistingRoutes >= 1)
 {
  if (Cmp(&ipc->ClasslessRoute, rt, sizeof(DHCP_CLASSLESS_ROUTE_TABLE)) != 0)
  {
   changed = 1;

   Copy(&ipc->ClasslessRoute, rt, sizeof(DHCP_CLASSLESS_ROUTE_TABLE));
  }
 }

 return changed;
}
