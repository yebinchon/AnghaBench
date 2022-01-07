
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int name ;
struct TYPE_17__ {int Name; TYPE_1__* Session; TYPE_2__* Hub; int Policy; int Cedar; } ;
struct TYPE_16__ {TYPE_1__* Session; int Protocol; } ;
struct TYPE_15__ {int ref; } ;
struct TYPE_14__ {int BridgeMode; int ref; int Username; TYPE_4__* Bridge; int Name; } ;
typedef int THREAD ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ HUB ;
typedef TYPE_3__ CONNECTION ;
typedef TYPE_4__ BRIDGE ;


 int AddRef (int ) ;
 int BRIDGE_USER_NAME ;
 int BRIDGE_USER_NAME_PRINT ;
 int CONNECTION_HUB_BRIDGE ;
 int CopyStr (int ) ;
 int Debug (char*,int ) ;
 int HLog (TYPE_2__*,char*,char*,...) ;
 int MAX_SIZE ;
 TYPE_3__* NewServerConnection (int ,int *,int *) ;
 TYPE_1__* NewServerSession (int ,TYPE_3__*,TYPE_2__*,int ,int ) ;
 int NoticeThreadInit (int *) ;
 int ReleaseConnection (TYPE_3__*) ;
 int ReleaseHub (TYPE_2__*) ;
 int ReleaseSession (TYPE_1__*) ;
 int SessionMain (TYPE_1__*) ;
 int StrCpy (char*,int,int ) ;

void BrBridgeThread(THREAD *thread, void *param)
{
 BRIDGE *b;
 CONNECTION *c;
 SESSION *s;
 HUB *h;
 char name[MAX_SIZE];

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 b = (BRIDGE *)param;


 c = NewServerConnection(b->Cedar, ((void*)0), thread);
 c->Protocol = CONNECTION_HUB_BRIDGE;


 s = NewServerSession(b->Cedar, c, b->Hub, BRIDGE_USER_NAME, b->Policy);
 HLog(b->Hub, "LH_START_BRIDGE", b->Name, s->Name);
 StrCpy(name, sizeof(name), b->Name);
 h = b->Hub;
 AddRef(h->ref);
 s->BridgeMode = 1;
 s->Bridge = b;
 c->Session = s;
 ReleaseConnection(c);


 s->Username = CopyStr(BRIDGE_USER_NAME_PRINT);

 b->Session = s;
 AddRef(s->ref);


 NoticeThreadInit(thread);


 Debug("Bridge %s Start.\n", b->Name);
 SessionMain(s);
 Debug("Bridge %s Stop.\n", b->Name);

 HLog(h, "LH_STOP_BRIDGE", name);

 ReleaseHub(h);

 ReleaseSession(s);
}
