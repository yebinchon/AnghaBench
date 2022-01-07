
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int UserClass; } ;
struct TYPE_11__ {TYPE_1__* Option; } ;
struct TYPE_10__ {int HubName; int Cedar; } ;
struct TYPE_9__ {scalar_t__ UseHubNameAsDhcpUserClassOption; } ;
typedef TYPE_2__ IPC ;
typedef TYPE_3__ HUB ;
typedef TYPE_4__ DHCP_OPTION_LIST ;


 TYPE_3__* GetHub (int ,int ) ;
 int ReleaseHub (TYPE_3__*) ;
 int StrCpy (int ,int,int ) ;

void IPCDhcpSetConditionalUserClass(IPC *ipc, DHCP_OPTION_LIST *req)
{
 HUB *hub;

 hub = GetHub(ipc->Cedar, ipc->HubName);
 if (hub == ((void*)0))
 {
  return;
 }

 if (hub->Option && hub->Option->UseHubNameAsDhcpUserClassOption)
 {
  StrCpy(req->UserClass, sizeof(req->UserClass), ipc->HubName);
 }
 ReleaseHub(hub);
}
