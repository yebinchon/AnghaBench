
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int t ;
typedef int hubname ;
struct TYPE_9__ {int lock_online; TYPE_1__* SecureNAT; } ;
struct TYPE_8__ {int Cedar; } ;
struct TYPE_7__ {int Nat; } ;
typedef TYPE_2__ SERVER ;
typedef int RPC_NAT_STATUS ;
typedef int PACK ;
typedef TYPE_3__ HUB ;


 int FreeRpcNatStatus (int *) ;
 TYPE_3__* GetHub (int ,char*) ;
 int Lock (int ) ;
 int LockHubList (int ) ;
 int MAX_HUBNAME_LEN ;
 int * NewPack () ;
 int NtGetStatus (int ,int *) ;
 int OutRpcNatStatus (int *,int *) ;
 int PackGetStr (int *,char*,char*,int) ;
 int ReleaseHub (TYPE_3__*) ;
 int Unlock (int ) ;
 int UnlockHubList (int ) ;
 int Zero (int *,int) ;

PACK *SiCalledGetNatStatus(SERVER *s, PACK *p)
{
 char hubname[MAX_HUBNAME_LEN + 1];
 RPC_NAT_STATUS t;
 PACK *ret;
 HUB *h;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return NewPack();
 }
 if (PackGetStr(p, "HubName", hubname, sizeof(hubname)) == 0)
 {
  return NewPack();
 }
 Zero(&t, sizeof(t));

 LockHubList(s->Cedar);
 {
  h = GetHub(s->Cedar, hubname);
 }
 UnlockHubList(s->Cedar);

 if (h != ((void*)0))
 {
  Lock(h->lock_online);
  {
   if (h->SecureNAT != ((void*)0))
   {
    NtGetStatus(h->SecureNAT->Nat, &t);
   }
  }
  Unlock(h->lock_online);
 }

 ReleaseHub(h);

 ret = NewPack();
 OutRpcNatStatus(ret, &t);
 FreeRpcNatStatus(&t);

 return ret;
}
