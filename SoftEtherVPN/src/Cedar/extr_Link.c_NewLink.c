
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ AuthType; int * CheckCertProc; int * SecureSignProc; } ;
struct TYPE_19__ {int LinkList; int StopAllLinkFlag; scalar_t__ Halt; } ;
struct TYPE_18__ {int ref; TYPE_1__* Policy; TYPE_3__* Hub; TYPE_5__* Auth; TYPE_1__* Option; int * Cedar; int lock; int * StopAllLinkFlag; } ;
struct TYPE_17__ {int RequireBridgeRoutingMode; int RequireMonitorMode; int RetryInterval; int NoRoutingTracking; int NumRetry; int DeviceName; int AccountName; } ;
typedef TYPE_1__ POLICY ;
typedef TYPE_2__ LINK ;
typedef TYPE_3__ HUB ;
typedef TYPE_1__ CLIENT_OPTION ;
typedef TYPE_5__ CLIENT_AUTH ;
typedef int CEDAR ;


 int Add (int ,TYPE_2__*) ;
 int AddRef (int ) ;
 scalar_t__ CLIENT_AUTHTYPE_ANONYMOUS ;
 scalar_t__ CLIENT_AUTHTYPE_CERT ;
 scalar_t__ CLIENT_AUTHTYPE_PASSWORD ;
 scalar_t__ CLIENT_AUTHTYPE_PLAIN_PASSWORD ;
 int Copy (TYPE_1__*,TYPE_1__*,int) ;
 TYPE_5__* CopyClientAuth (TYPE_5__*) ;
 int INFINITE ;
 int LINK_DEVICE_NAME ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 scalar_t__ MAX_HUB_LINKS ;
 int NewLock () ;
 int NewRef () ;
 int NormalizeLinkPolicy (TYPE_1__*) ;
 int StrCpy (int ,int,int ) ;
 scalar_t__ UniIsEmptyStr (int ) ;
 int UnlockList (int ) ;
 void* ZeroMalloc (int) ;

LINK *NewLink(CEDAR *cedar, HUB *hub, CLIENT_OPTION *option, CLIENT_AUTH *auth, POLICY *policy)
{
 CLIENT_OPTION *o;
 LINK *k;
 CLIENT_AUTH *a;

 if (cedar == ((void*)0) || hub == ((void*)0) || option == ((void*)0) || auth == ((void*)0) || policy == ((void*)0))
 {
  return ((void*)0);
 }
 if (hub->Halt)
 {
  return ((void*)0);
 }

 if (LIST_NUM(hub->LinkList) >= MAX_HUB_LINKS)
 {
  return ((void*)0);
 }

 if (UniIsEmptyStr(option->AccountName))
 {
  return ((void*)0);
 }


 if (auth->AuthType != CLIENT_AUTHTYPE_ANONYMOUS && auth->AuthType != CLIENT_AUTHTYPE_PASSWORD &&
  auth->AuthType != CLIENT_AUTHTYPE_PLAIN_PASSWORD && auth->AuthType != CLIENT_AUTHTYPE_CERT)
 {

  return ((void*)0);
 }


 o = ZeroMalloc(sizeof(CLIENT_OPTION));
 Copy(o, option, sizeof(CLIENT_OPTION));
 StrCpy(o->DeviceName, sizeof(o->DeviceName), LINK_DEVICE_NAME);

 o->RequireBridgeRoutingMode = 1;
 o->RequireMonitorMode = 0;

 o->NumRetry = INFINITE;
 o->RetryInterval = 10;
 o->NoRoutingTracking = 1;


 a = CopyClientAuth(auth);
 a->SecureSignProc = ((void*)0);
 a->CheckCertProc = ((void*)0);


 k = ZeroMalloc(sizeof(LINK));

 k->StopAllLinkFlag = &hub->StopAllLinkFlag;

 k->lock = NewLock();
 k->ref = NewRef();

 k->Cedar = cedar;
 k->Option = o;
 k->Auth = a;
 k->Hub = hub;


 k->Policy = ZeroMalloc(sizeof(POLICY));
 Copy(k->Policy, policy, sizeof(POLICY));


 NormalizeLinkPolicy(k->Policy);


 LockList(hub->LinkList);
 {
  Add(hub->LinkList, k);
  AddRef(k->ref);
 }
 UnlockList(hub->LinkList);

 return k;
}
