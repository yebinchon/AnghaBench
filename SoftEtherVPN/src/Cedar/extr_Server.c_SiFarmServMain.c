
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_23__ {scalar_t__ num_item; } ;
struct TYPE_22__ {int HubList; } ;
struct TYPE_21__ {int Halting; TYPE_8__* TaskQueue; int TaskPostEvent; int HubList; } ;
struct TYPE_20__ {int CompleteEvent; int * Response; int * Request; } ;
struct TYPE_19__ {int Offline; scalar_t__ Type; int Name; } ;
struct TYPE_18__ {int DynamicHub; int Name; TYPE_5__* FarmMember; } ;
struct TYPE_17__ {scalar_t__ Halt; TYPE_6__* Cedar; } ;
typedef int SOCK ;
typedef TYPE_1__ SERVER ;
typedef int PACK ;
typedef TYPE_2__ HUB_LIST ;
typedef TYPE_3__ HUB ;
typedef TYPE_4__ FARM_TASK ;
typedef TYPE_5__ FARM_MEMBER ;
typedef TYPE_6__ CEDAR ;


 int Add (int ,TYPE_2__*) ;
 int Debug (char*) ;
 int Disconnect (int *) ;
 int FIRM_SERV_RECV_PACK_MAX_SIZE ;
 int FreePack (int *) ;
 TYPE_4__* GetNext (TYPE_8__*) ;
 scalar_t__ HUB_TYPE_FARM_STATIC ;
 int * HttpServerRecv (int *) ;
 int * HttpServerRecvEx (int *,int ) ;
 int HttpServerSend (int *,int *) ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int LockQueue (TYPE_8__*) ;
 int * NewPack () ;
 int PackAddStr (int *,char*,char*) ;
 int SERVER_CONTROL_TCP_TIMEOUT ;
 int Set (int ) ;
 int SiPackAddCreateHub (int *,TYPE_3__*) ;
 int StrCpy (int ,int,int ) ;
 scalar_t__ Tick64 () ;
 int UnlockList (int ) ;
 int UnlockQueue (TYPE_8__*) ;
 int Wait (int ,int) ;
 TYPE_2__* ZeroMalloc (int) ;

void SiFarmServMain(SERVER *server, SOCK *sock, FARM_MEMBER *f)
{
 UINT wait_time = SERVER_CONTROL_TCP_TIMEOUT / 2;
 bool send_noop = 0;
 UINT i;
 CEDAR *c;

 if (server == ((void*)0) || sock == ((void*)0) || f == ((void*)0))
 {
  Debug("SiFarmServMain Failed.\n");
  return;
 }

 Debug("SiFarmServMain Started.\n");

 c = server->Cedar;



 LockList(c->HubList);
 {
  for (i = 0;i < LIST_NUM(c->HubList);i++)
  {
   HUB *h = LIST_DATA(c->HubList, i);
   if (h->Offline == 0)
   {
    if (h->Type == HUB_TYPE_FARM_STATIC)
    {
     PACK *p;
     HUB_LIST *hh;
     p = NewPack();
     SiPackAddCreateHub(p, h);
     PackAddStr(p, "taskname", "createhub");
     HttpServerSend(sock, p);
     FreePack(p);
     p = HttpServerRecv(sock);
     FreePack(p);

     p = NewPack();
     SiPackAddCreateHub(p, h);
     PackAddStr(p, "taskname", "updatehub");
     HttpServerSend(sock, p);
     FreePack(p);
     p = HttpServerRecv(sock);
     FreePack(p);

     hh = ZeroMalloc(sizeof(HUB_LIST));
     hh->DynamicHub = 0;
     hh->FarmMember = f;
     StrCpy(hh->Name, sizeof(hh->Name), h->Name);
     LockList(f->HubList);
     {
      Add(f->HubList, hh);
     }
     UnlockList(f->HubList);
    }
   }
  }
 }
 UnlockList(c->HubList);

 Debug("SiFarmServMain: while (true)\n");

 while (1)
 {
  FARM_TASK *t;
  UINT64 tick;

  do
  {

   LockQueue(f->TaskQueue);
   {
    t = GetNext(f->TaskQueue);
   }
   UnlockQueue(f->TaskQueue);

   if (t != ((void*)0))
   {

    PACK *p = t->Request;
    bool ret;


    ret = HttpServerSend(sock, p);
    send_noop = 0;

    if (ret == 0)
    {


     Set(t->CompleteEvent);
     goto DISCONNECTED;
    }


    p = HttpServerRecvEx(sock, FIRM_SERV_RECV_PACK_MAX_SIZE);

    t->Response = p;
    Set(t->CompleteEvent);

    if (p == ((void*)0))
    {

     Disconnect(sock);
     goto DISCONNECTED;
    }
   }
  }
  while (t != ((void*)0));

  if (send_noop)
  {

   PACK *p;
   bool ret;
   p = NewPack();
   PackAddStr(p, "taskname", "noop");

   ret = HttpServerSend(sock, p);
   FreePack(p);

   if (ret == 0)
   {
    goto DISCONNECTED;
   }

   p = HttpServerRecv(sock);
   if (p == ((void*)0))
   {
    goto DISCONNECTED;
   }

   FreePack(p);
  }

  tick = Tick64();

  while (1)
  {
   bool break_flag;
   if ((tick + wait_time) <= Tick64())
   {
    break;
   }

   Wait(f->TaskPostEvent, 250);

   break_flag = 0;
   LockQueue(f->TaskQueue);
   {
    if (f->TaskQueue->num_item != 0)
    {
     break_flag = 1;
    }
   }
   UnlockQueue(f->TaskQueue);

   if (break_flag || f->Halting || server->Halt)
   {
    break;
   }
  }
  send_noop = 1;
 }

DISCONNECTED:

 Debug("SiFarmServMain: DISCONNECTED\n");

 f->Halting = 1;

 LockQueue(f->TaskQueue);
 {
  FARM_TASK *t;

  while (t = GetNext(f->TaskQueue))
  {
   Set(t->CompleteEvent);
  }
 }
 UnlockQueue(f->TaskQueue);
}
