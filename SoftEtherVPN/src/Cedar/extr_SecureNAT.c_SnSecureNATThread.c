
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_29__ {int ref; } ;
struct TYPE_28__ {TYPE_5__* Session; int Protocol; } ;
struct TYPE_27__ {int ref; } ;
struct TYPE_26__ {int NoBroadcastLimiter; } ;
struct TYPE_25__ {int SecureNATMode; int Hub; TYPE_9__* Cancel1; int ref; int Username; int Name; TYPE_4__* SecureNAT; } ;
struct TYPE_24__ {TYPE_3__* Nat; TYPE_5__* Session; TYPE_7__* Hub; int Cedar; } ;
struct TYPE_23__ {TYPE_2__* Virtual; } ;
struct TYPE_22__ {TYPE_1__* NativeNat; TYPE_9__* Cancel; } ;
struct TYPE_21__ {int CancelLock; TYPE_9__* Cancel; } ;
typedef int THREAD ;
typedef TYPE_4__ SNAT ;
typedef TYPE_5__ SESSION ;
typedef TYPE_6__ POLICY ;
typedef TYPE_7__ HUB ;
typedef TYPE_8__ CONNECTION ;
typedef TYPE_9__ CANCEL ;


 int AddRef (int ) ;
 int CONNECTION_HUB_SECURE_NAT ;
 TYPE_6__* ClonePolicy (int ) ;
 int CopyStr (int ) ;
 int Debug (char*) ;
 int GetDefaultPolicy () ;
 int HLog (int ,char*,...) ;
 int Lock (int ) ;
 TYPE_8__* NewServerConnection (int ,int *,int *) ;
 TYPE_5__* NewServerSession (int ,TYPE_8__*,TYPE_7__*,int ,TYPE_6__*) ;
 int NoticeThreadInit (int *) ;
 int ReleaseCancel (TYPE_9__*) ;
 int ReleaseConnection (TYPE_8__*) ;
 int ReleaseHub (TYPE_7__*) ;
 int ReleaseSession (TYPE_5__*) ;
 int SNAT_USER_NAME ;
 int SNAT_USER_NAME_PRINT ;
 int SessionMain (TYPE_5__*) ;
 int Unlock (int ) ;

void SnSecureNATThread(THREAD *t, void *param)
{
 SNAT *s;
 CONNECTION *c;
 SESSION *se;
 POLICY *policy;
 HUB *h;

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 s = (SNAT *)param;

 c = NewServerConnection(s->Cedar, ((void*)0), t);
 c->Protocol = CONNECTION_HUB_SECURE_NAT;


 policy = ClonePolicy(GetDefaultPolicy());


 policy->NoBroadcastLimiter = 1;

 h = s->Hub;
 AddRef(h->ref);


 se = NewServerSession(s->Cedar, c, s->Hub, SNAT_USER_NAME, policy);
 se->SecureNATMode = 1;
 se->SecureNAT = s;
 c->Session = se;
 ReleaseConnection(c);

 HLog(se->Hub, "LH_NAT_START", se->Name);


 se->Username = CopyStr(SNAT_USER_NAME_PRINT);

 s->Session = se;
 AddRef(se->ref);


 NoticeThreadInit(t);

 ReleaseCancel(s->Nat->Virtual->Cancel);
 s->Nat->Virtual->Cancel = se->Cancel1;
 AddRef(se->Cancel1->ref);

 if (s->Nat->Virtual->NativeNat != ((void*)0))
 {
  CANCEL *old_cancel = ((void*)0);

  Lock(s->Nat->Virtual->NativeNat->CancelLock);
  {
   if (s->Nat->Virtual->NativeNat->Cancel != ((void*)0))
   {
    old_cancel = s->Nat->Virtual->NativeNat->Cancel;

    s->Nat->Virtual->NativeNat->Cancel = se->Cancel1;

    AddRef(se->Cancel1->ref);
   }
  }
  Unlock(s->Nat->Virtual->NativeNat->CancelLock);

  if (old_cancel != ((void*)0))
  {
   ReleaseCancel(old_cancel);
  }
 }


 Debug("SecureNAT Start.\n");
 SessionMain(se);
 Debug("SecureNAT Stop.\n");

 HLog(se->Hub, "LH_NAT_STOP");

 ReleaseHub(h);

 ReleaseSession(se);
}
