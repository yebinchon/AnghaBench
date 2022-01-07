
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int tmp ;
typedef int X ;
typedef scalar_t__ UINT ;
struct TYPE_19__ {scalar_t__* Ports; int HubList; int TaskPostEvent; int TaskQueue; scalar_t__ Point; scalar_t__ MaxSessions; scalar_t__ Weight; int ConnectedTime; int * ServerCert; int hostname; scalar_t__ NumPort; scalar_t__ Ip; int Cedar; } ;
struct TYPE_18__ {int Cedar; int FarmMemberList; } ;
struct TYPE_17__ {int RemoteIP; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ SERVER ;
typedef int PACK ;
typedef TYPE_3__ HUB_LIST ;
typedef TYPE_3__ FARM_MEMBER ;


 int Add (int ,TYPE_3__*) ;
 int CompareHubList ;
 int Debug (char*,char*,char*) ;
 int Delete (int ,TYPE_3__*) ;
 scalar_t__ FARM_DEFAULT_WEIGHT ;
 int Free (TYPE_3__*) ;
 int FreePack (int *) ;
 int HttpServerSend (TYPE_1__*,int *) ;
 int IPToStr32 (char*,int,scalar_t__) ;
 scalar_t__ IPToUINT (int *) ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int NewEvent () ;
 int NewList (int ) ;
 int * NewPack () ;
 int NewQueue () ;
 int ReleaseEvent (int ) ;
 int ReleaseList (int ) ;
 int ReleaseQueue (int ) ;
 int SERVER_CONTROL_TCP_TIMEOUT ;
 scalar_t__ SERVER_MAX_SESSIONS ;
 int SLog (int ,char*,char*,...) ;
 int SetTimeout (TYPE_1__*,int ) ;
 int SiFarmServMain (TYPE_2__*,TYPE_1__*,TYPE_3__*) ;
 int StrCpy (int ,int,char*) ;
 int SystemTime64 () ;
 int UnlockList (int ) ;
 TYPE_3__* ZeroMalloc (int) ;

void SiFarmServ(SERVER *server, SOCK *sock, X *cert, UINT ip, UINT num_port, UINT *ports, char *hostname, UINT point, UINT weight, UINT max_sessions)
{
 PACK *p;
 FARM_MEMBER *f;
 UINT i;
 char tmp[MAX_SIZE];

 if (server == ((void*)0) || sock == ((void*)0) || cert == ((void*)0) || num_port == 0 || ports == ((void*)0) || hostname == ((void*)0))
 {
  return;
 }

 if (weight == 0)
 {
  weight = FARM_DEFAULT_WEIGHT;
 }

 if (max_sessions == 0)
 {
  max_sessions = SERVER_MAX_SESSIONS;
 }

 if (ip == 0)
 {


  ip = IPToUINT(&sock->RemoteIP);
 }

 IPToStr32(tmp, sizeof(tmp), ip);
 SLog(server->Cedar, "LS_FARM_SERV_START", tmp, hostname);


 p = NewPack();
 HttpServerSend(sock, p);
 FreePack(p);

 IPToStr32(tmp, sizeof(tmp), ip);
 Debug("Farm Member %s Connected. IP: %s\n", hostname, tmp);

 SetTimeout(sock, SERVER_CONTROL_TCP_TIMEOUT);

 f = ZeroMalloc(sizeof(FARM_MEMBER));
 f->Cedar = server->Cedar;
 f->Ip = ip;
 f->NumPort = num_port;
 f->Ports = ports;
 StrCpy(f->hostname, sizeof(f->hostname), hostname);
 f->ServerCert = cert;
 f->ConnectedTime = SystemTime64();
 f->Weight = weight;
 f->MaxSessions = max_sessions;

 f->HubList = NewList(CompareHubList);
 f->Point = point;

 f->TaskQueue = NewQueue();
 f->TaskPostEvent = NewEvent();


 LockList(server->FarmMemberList);
 {
  Add(server->FarmMemberList, f);
 }
 UnlockList(server->FarmMemberList);


 SiFarmServMain(server, sock, f);


 LockList(server->FarmMemberList);
 {
  Delete(server->FarmMemberList, f);
 }
 UnlockList(server->FarmMemberList);

 ReleaseQueue(f->TaskQueue);
 ReleaseEvent(f->TaskPostEvent);

 for (i = 0;i < LIST_NUM(f->HubList);i++)
 {
  HUB_LIST *hh = LIST_DATA(f->HubList, i);
  Free(hh);
 }

 ReleaseList(f->HubList);

 Free(f);

 SLog(server->Cedar, "LS_FARM_SERV_END", hostname);
}
