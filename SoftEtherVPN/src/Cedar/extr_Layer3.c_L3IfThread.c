
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_11__ ;


typedef int username ;
typedef int tmp ;
typedef int name ;
struct TYPE_25__ {TYPE_3__* Session; int Protocol; } ;
struct TYPE_24__ {TYPE_3__* Session; TYPE_13__* Hub; TYPE_2__* Switch; } ;
struct TYPE_23__ {int NoBroadcastLimiter; } ;
struct TYPE_22__ {int L3SwitchMode; char* UserNameReal; int ref; int * Username; TYPE_5__* L3If; int * Name; } ;
struct TYPE_21__ {int Name; TYPE_11__* Cedar; } ;
struct TYPE_20__ {scalar_t__ ServerType; } ;
struct TYPE_19__ {int SessionCounter; } ;
struct TYPE_18__ {TYPE_1__* Server; } ;
typedef int THREAD ;
typedef TYPE_3__ SESSION ;
typedef TYPE_4__ POLICY ;
typedef TYPE_5__ L3IF ;
typedef TYPE_6__ CONNECTION ;


 int AddRef (int ) ;
 int CONNECTION_HUB_LAYER3 ;
 TYPE_4__* ClonePolicy (int ) ;
 int ConvertSafeFileName (char*,int,char*) ;
 void* CopyStr (char*) ;
 int Format (char*,int,char*,char*,int ,...) ;
 int Free (int *) ;
 int GetDefaultPolicy () ;
 int GetMachineHostName (char*,int) ;
 int Inc (int ) ;
 char* L3_USERNAME ;
 int MAX_SIZE ;
 TYPE_6__* NewServerConnection (TYPE_11__*,int *,int *) ;
 TYPE_3__* NewServerSession (TYPE_11__*,TYPE_6__*,TYPE_13__*,char*,TYPE_4__*) ;
 int NoticeThreadInit (int *) ;
 int ReleaseConnection (TYPE_6__*) ;
 int ReleaseSession (TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int SessionMain (TYPE_3__*) ;
 int StrCat (char*,int,int ) ;
 int StrCpy (char*,int,char*) ;
 int StrUpper (char*) ;

void L3IfThread(THREAD *t, void *param)
{
 L3IF *f;
 CONNECTION *c;
 SESSION *s;
 POLICY *policy;
 char tmp[MAX_SIZE];
 char name[MAX_SIZE];
 char username[MAX_SIZE];

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 f = (L3IF *)param;

 StrCpy(username, sizeof(username), L3_USERNAME);
 if (f->Switch != ((void*)0))
 {
  StrCat(username, sizeof(username), f->Switch->Name);
 }


 c = NewServerConnection(f->Switch->Cedar, ((void*)0), t);
 c->Protocol = CONNECTION_HUB_LAYER3;


 policy = ClonePolicy(GetDefaultPolicy());

 policy->NoBroadcastLimiter = 1;
 s = NewServerSession(f->Switch->Cedar, c, f->Hub, username, policy);
 c->Session = s;

 ReleaseConnection(c);


 GetMachineHostName(tmp, sizeof(tmp));
 if (f->Switch->Cedar->Server->ServerType == SERVER_TYPE_STANDALONE)
 {
  Format(name, sizeof(name), "SID-L3-%s-%u", f->Switch->Name, Inc(f->Hub->SessionCounter));
 }
 else
 {
  Format(name, sizeof(name), "SID-L3-%s-%s-%u", tmp, f->Switch->Name, Inc(f->Hub->SessionCounter));
 }
 ConvertSafeFileName(name, sizeof(name), name);
 StrUpper(name);

 Free(s->Name);
 s->Name = CopyStr(name);

 s->L3SwitchMode = 1;
 s->L3If = f;

 if (s->Username != ((void*)0))
 {
  Free(s->Username);
 }
 s->Username = CopyStr(username);

 StrCpy(s->UserNameReal, sizeof(s->UserNameReal), username);

 f->Session = s;
 AddRef(s->ref);


 NoticeThreadInit(t);


 SessionMain(s);


 ReleaseSession(s);
}
