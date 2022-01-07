
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int wchar_t ;
typedef int name ;
struct TYPE_14__ {TYPE_2__* Session; int Protocol; } ;
struct TYPE_13__ {TYPE_1__* Option; TYPE_2__* ServerSession; int Hub; int Cedar; int Policy; } ;
struct TYPE_12__ {int LinkModeServer; int Hub; int Name; int ref; int Username; TYPE_3__* Link; } ;
struct TYPE_11__ {int AccountName; } ;
typedef int THREAD ;
typedef TYPE_2__ SESSION ;
typedef int POLICY ;
typedef TYPE_3__ LINK ;
typedef TYPE_4__ CONNECTION ;


 int AddRef (int ) ;
 int CONNECTION_HUB_LINK_SERVER ;
 int Copy (int *,int ,int) ;
 int CopyStr (int ) ;
 int HLog (int ,char*,int *,...) ;
 int LINK_USER_NAME ;
 int LINK_USER_NAME_PRINT ;
 int MAX_SIZE ;
 TYPE_4__* NewServerConnection (int ,int *,int *) ;
 TYPE_2__* NewServerSession (int ,TYPE_4__*,int ,int ,int *) ;
 int NoticeThreadInit (int *) ;
 int ReleaseConnection (TYPE_4__*) ;
 int ReleaseSession (TYPE_2__*) ;
 int SessionMain (TYPE_2__*) ;
 int UniStrCpy (int *,int,int ) ;
 int * ZeroMalloc (int) ;

void LinkServerSessionThread(THREAD *t, void *param)
{
 LINK *k = (LINK *)param;
 CONNECTION *c;
 SESSION *s;
 POLICY *policy;
 wchar_t name[MAX_SIZE];

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }


 c = NewServerConnection(k->Cedar, ((void*)0), t);
 c->Protocol = CONNECTION_HUB_LINK_SERVER;


 policy = ZeroMalloc(sizeof(POLICY));
 Copy(policy, k->Policy, sizeof(POLICY));


 s = NewServerSession(k->Cedar, c, k->Hub, LINK_USER_NAME, policy);
 s->LinkModeServer = 1;
 s->Link = k;
 c->Session = s;
 ReleaseConnection(c);


 s->Username = CopyStr(LINK_USER_NAME_PRINT);

 k->ServerSession = s;
 AddRef(k->ServerSession->ref);


 NoticeThreadInit(t);

 UniStrCpy(name, sizeof(name), k->Option->AccountName);
 HLog(s->Hub, "LH_LINK_START", name, s->Name);


 SessionMain(s);

 HLog(s->Hub, "LH_LINK_STOP", name);

 ReleaseSession(s);
}
