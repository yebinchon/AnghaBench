
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int Local; int Monitor; int TapMode; int LimitBroadcast; int TapMacAddress; int * ParentLocalBridge; TYPE_1__* Policy; int Name; TYPE_2__* Hub; int Cedar; } ;
struct TYPE_13__ {int Cedar; } ;
struct TYPE_12__ {int MonitorPort; int NoBroadcastLimiter; } ;
typedef int THREAD ;
typedef TYPE_1__ POLICY ;
typedef int LOCALBRIDGE ;
typedef TYPE_2__ HUB ;
typedef TYPE_3__ BRIDGE ;


 int BrBridgeThread ;
 TYPE_1__* ClonePolicy (TYPE_1__*) ;
 int Copy (int ,char*,int) ;
 int GenMacAddress (int ) ;
 TYPE_1__* GetDefaultPolicy () ;
 int IsZero (char*,int) ;
 int * NewThread (int ,TYPE_3__*) ;
 int ReleaseThread (int *) ;
 int StrCpy (int ,int,char*) ;
 int WaitThreadInit (int *) ;
 TYPE_3__* ZeroMalloc (int) ;

BRIDGE *BrNewBridge(HUB *h, char *name, POLICY *p, bool local, bool monitor, bool tapmode, char *tapaddr, bool limit_broadcast, LOCALBRIDGE *parent_local_bridge)
{
 BRIDGE *b;
 POLICY *policy;
 THREAD *t;

 if (h == ((void*)0) || name == ((void*)0) || parent_local_bridge == ((void*)0))
 {
  return ((void*)0);
 }

 if (p == ((void*)0))
 {
  policy = ClonePolicy(GetDefaultPolicy());
 }
 else
 {
  policy = ClonePolicy(p);
 }

 b = ZeroMalloc(sizeof(BRIDGE));
 b->Cedar = h->Cedar;
 b->Hub = h;
 StrCpy(b->Name, sizeof(b->Name), name);
 b->Policy = policy;
 b->Local = local;
 b->Monitor = monitor;
 b->TapMode = tapmode;
 b->LimitBroadcast = limit_broadcast;
 b->ParentLocalBridge = parent_local_bridge;

 if (b->TapMode)
 {
  if (tapaddr != ((void*)0) && IsZero(tapaddr, 6) == 0)
  {
   Copy(b->TapMacAddress, tapaddr, 6);
  }
  else
  {
   GenMacAddress(b->TapMacAddress);
  }
 }

 if (monitor)
 {

  policy->MonitorPort = 1;
 }

 if (b->LimitBroadcast == 0)
 {

  policy->NoBroadcastLimiter = 1;
 }


 t = NewThread(BrBridgeThread, b);
 WaitThreadInit(t);
 ReleaseThread(t);

 return b;
}
