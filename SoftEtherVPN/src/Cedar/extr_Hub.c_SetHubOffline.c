
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_14__ {scalar_t__ Type; int BeingOffline; int Offline; TYPE_2__* Cedar; int lock_online; int Name; int * SecureNAT; scalar_t__ Halt; } ;
struct TYPE_13__ {int * Bridge; int HubName; } ;
struct TYPE_12__ {TYPE_1__* Server; int LocalBridgeList; } ;
struct TYPE_11__ {scalar_t__ ServerType; } ;
typedef TYPE_3__ LOCALBRIDGE ;
typedef TYPE_4__ HUB ;


 int BrFreeBridge (int *) ;
 int HLog (TYPE_4__*,char*) ;
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int SiHubOfflineProc (TYPE_4__*) ;
 int SnFreeSecureNAT (int *) ;
 int StopAllLink (TYPE_4__*) ;
 int StopAllSession (TYPE_4__*) ;
 scalar_t__ StrCmpi (int ,int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

void SetHubOffline(HUB *h)
{
 UINT i;
 bool for_cluster = 0;

 if (h == ((void*)0))
 {
  return;
 }

 if (h->Cedar->Server != ((void*)0) && h->Cedar->Server->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  if (h->Type == HUB_TYPE_FARM_DYNAMIC)
  {
   for_cluster = 1;
  }
 }

 h->BeingOffline = 1;

 Lock(h->lock_online);
 {
  if (h->Offline || h->Halt)
  {
   Unlock(h->lock_online);
   h->BeingOffline = 0;
   return;
  }

  HLog(h, "LH_OFFLINE");


  StopAllLink(h);


  SnFreeSecureNAT(h->SecureNAT);
  h->SecureNAT = ((void*)0);


  LockList(h->Cedar->LocalBridgeList);
  {
   for (i = 0;i < LIST_NUM(h->Cedar->LocalBridgeList);i++)
   {
    LOCALBRIDGE *br = LIST_DATA(h->Cedar->LocalBridgeList, i);

    if (StrCmpi(br->HubName, h->Name) == 0)
    {
     BrFreeBridge(br->Bridge);
     br->Bridge = ((void*)0);
    }
   }
  }
  UnlockList(h->Cedar->LocalBridgeList);


  h->Offline = 1;


  StopAllSession(h);
 }
 Unlock(h->lock_online);

 h->BeingOffline = 0;

 if (h->Cedar->Server != ((void*)0))
 {
  SiHubOfflineProc(h);
 }
}
