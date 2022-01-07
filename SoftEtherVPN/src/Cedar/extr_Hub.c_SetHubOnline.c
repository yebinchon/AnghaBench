
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_16__ {scalar_t__ Type; int Offline; TYPE_2__* Cedar; int lock_online; int Name; int SecureNATOption; int * SecureNAT; scalar_t__ EnableSecureNAT; } ;
struct TYPE_15__ {int LimitBroadcast; int TapMacAddress; int TapMode; int Monitor; int Local; int DeviceName; int * Bridge; int HubName; } ;
struct TYPE_14__ {TYPE_1__* Server; int LocalBridgeList; } ;
struct TYPE_13__ {scalar_t__ ServerType; } ;
typedef TYPE_3__ LOCALBRIDGE ;
typedef TYPE_4__ HUB ;


 int * BrNewBridge (TYPE_4__*,int ,int *,int ,int ,int ,int ,int ,TYPE_3__*) ;
 int HLog (TYPE_4__*,char*) ;
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int SiHubOnlineProc (TYPE_4__*) ;
 int * SnNewSecureNAT (TYPE_4__*,int ) ;
 int StartAllLink (TYPE_4__*) ;
 scalar_t__ StrCmpi (int ,int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;

void SetHubOnline(HUB *h)
{
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

 Lock(h->lock_online);
 {
  if (h->Offline == 0)
  {
   Unlock(h->lock_online);
   return;
  }
  HLog(h, "LH_ONLINE");


  StartAllLink(h);


  if (h->EnableSecureNAT)
  {
   if (h->SecureNAT == ((void*)0))
   {
    if (for_cluster == 0)
    {
     h->SecureNAT = SnNewSecureNAT(h, h->SecureNATOption);
    }
   }
  }


  if (h->Type != HUB_TYPE_FARM_DYNAMIC)
  {
   LockList(h->Cedar->LocalBridgeList);
   {
    UINT i;
    for (i = 0;i < LIST_NUM(h->Cedar->LocalBridgeList);i++)
    {
     LOCALBRIDGE *br = LIST_DATA(h->Cedar->LocalBridgeList, i);

     if (StrCmpi(br->HubName, h->Name) == 0)
     {
      if (br->Bridge == ((void*)0))
      {
       br->Bridge = BrNewBridge(h, br->DeviceName, ((void*)0), br->Local, br->Monitor,
        br->TapMode, br->TapMacAddress, br->LimitBroadcast, br);
      }
     }
    }
   }
   UnlockList(h->Cedar->LocalBridgeList);
  }

  h->Offline = 0;
 }
 Unlock(h->lock_online);

 if (h->Cedar->Server != ((void*)0))
 {
  SiHubOnlineProc(h);
 }
}
