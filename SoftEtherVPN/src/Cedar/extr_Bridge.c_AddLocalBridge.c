
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_15__ {int OsType; } ;
struct TYPE_14__ {int LocalBridgeList; int HubList; } ;
struct TYPE_13__ {char* Name; scalar_t__ Type; int Offline; int lock_online; int ref; } ;
struct TYPE_12__ {char* DeviceName; char* HubName; int TapMode; int Local; int LimitBroadcast; int Monitor; int TapMacAddress; int * Bridge; } ;
typedef TYPE_1__ LOCALBRIDGE ;
typedef TYPE_2__ HUB ;
typedef TYPE_3__ CEDAR ;


 int Add (int ,TYPE_1__*) ;
 int AddRef (int ) ;
 int * BrNewBridge (TYPE_2__*,char*,int *,int,int,int,int ,int,TYPE_1__*) ;
 int Copy (int ,char*,int) ;
 int GenMacAddress (int ) ;
 TYPE_7__* GetOsInfo () ;
 scalar_t__ HUB_TYPE_FARM_DYNAMIC ;
 scalar_t__ IsInList (int ,TYPE_1__*) ;
 int IsZero (char*,int) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int OS_IS_UNIX (int ) ;
 int ReleaseHub (TYPE_2__*) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 TYPE_1__* ZeroMalloc (int) ;

void AddLocalBridge(CEDAR *c, char *hubname, char *devicename, bool local, bool monitor, bool tapmode, char *tapaddr, bool limit_broadcast)
{
 UINT i;
 HUB *h = ((void*)0);
 LOCALBRIDGE *br = ((void*)0);

 if (c == ((void*)0) || hubname == ((void*)0) || devicename == ((void*)0))
 {
  return;
 }

 if (OS_IS_UNIX(GetOsInfo()->OsType) == 0)
 {
  tapmode = 0;
 }

 LockList(c->HubList);
 {
  LockList(c->LocalBridgeList);
  {
   bool exists = 0;


   for (i = 0;i < LIST_NUM(c->LocalBridgeList);i++)
   {
    LOCALBRIDGE *br = LIST_DATA(c->LocalBridgeList, i);
    if (StrCmpi(br->DeviceName, devicename) == 0)
    {
     if (StrCmpi(br->HubName, hubname) == 0)
     {
      if (br->TapMode == tapmode)
      {
       exists = 1;
      }
     }
    }
   }

   if (exists == 0)
   {

    br = ZeroMalloc(sizeof(LOCALBRIDGE));
    StrCpy(br->HubName, sizeof(br->HubName), hubname);
    StrCpy(br->DeviceName, sizeof(br->DeviceName), devicename);
    br->Bridge = ((void*)0);
    br->Local = local;
    br->TapMode = tapmode;
    br->LimitBroadcast = limit_broadcast;
    br->Monitor = monitor;
    if (br->TapMode)
    {
     if (tapaddr != ((void*)0) && IsZero(tapaddr, 6) == 0)
     {
      Copy(br->TapMacAddress, tapaddr, 6);
     }
     else
     {
      GenMacAddress(br->TapMacAddress);
     }
    }

    Add(c->LocalBridgeList, br);


    for (i = 0;i < LIST_NUM(c->HubList);i++)
    {
     HUB *hub = LIST_DATA(c->HubList, i);
     if (StrCmpi(hub->Name, br->HubName) == 0)
     {
      h = hub;
      AddRef(h->ref);
      break;
     }
    }
   }
  }
  UnlockList(c->LocalBridgeList);
 }
 UnlockList(c->HubList);


 if (h != ((void*)0) && br != ((void*)0) && h->Type != HUB_TYPE_FARM_DYNAMIC)
 {
  Lock(h->lock_online);
  {
   if (h->Offline == 0)
   {
    LockList(c->LocalBridgeList);
    {
     if (IsInList(c->LocalBridgeList, br))
     {
      if (br->Bridge == ((void*)0))
      {
       br->Bridge = BrNewBridge(h, br->DeviceName, ((void*)0), br->Local, br->Monitor, br->TapMode, br->TapMacAddress, br->LimitBroadcast, br);
      }
     }
    }
    UnlockList(c->LocalBridgeList);
   }
  }
  Unlock(h->lock_online);
 }

 ReleaseHub(h);
}
