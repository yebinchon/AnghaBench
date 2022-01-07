
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Offline; int HubIsOnlineButHalting; int Halt; int Name; int Cedar; } ;
typedef TYPE_1__ HUB ;


 int SLog (int ,char*,int ) ;
 int SetHubOffline (TYPE_1__*) ;

void StopHub(HUB *h)
{
 bool old_status = 0;

 if (h == ((void*)0))
 {
  return;
 }

 old_status = h->Offline;
 h->HubIsOnlineButHalting = 1;

 SetHubOffline(h);

 if (h->Halt == 0)
 {
  SLog(h->Cedar, "LS_HUB_STOP", h->Name);
  h->Halt = 1;
 }

 h->Offline = old_status;
 h->HubIsOnlineButHalting = 0;
}
