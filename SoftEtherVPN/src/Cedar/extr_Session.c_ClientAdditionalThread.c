
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_14__ {scalar_t__ AdditionalConnectionFailedCounter; scalar_t__ LastCounterResetTick; int ConnectingThreads; int CurrentNumConnection; } ;
struct TYPE_13__ {scalar_t__ LastTryAddConnectTime; TYPE_3__* Connection; } ;
struct TYPE_12__ {int ref; } ;
typedef TYPE_1__ THREAD ;
typedef TYPE_2__ SESSION ;
typedef TYPE_3__ CONNECTION ;


 scalar_t__ ADDITIONAL_CONNECTION_COUNTER_RESET_INTERVAL ;
 int Add (int ,TYPE_1__*) ;
 int AddRef (int ) ;
 int ClientAdditionalConnect (TYPE_3__*,TYPE_1__*) ;
 int Count (int ) ;
 int Debug (char*,int ) ;
 int Dec (int ) ;
 scalar_t__ Delete (int ,TYPE_1__*) ;
 int Inc (int ) ;
 int LockList (int ) ;
 int NoticeThreadInit (TYPE_1__*) ;
 int ReleaseSession (TYPE_2__*) ;
 int ReleaseThread (TYPE_1__*) ;
 scalar_t__ Tick64 () ;
 int UnlockList (int ) ;

void ClientAdditionalThread(THREAD *t, void *param)
{
 SESSION *s;
 CONNECTION *c;

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 s = (SESSION *)param;

 s->LastTryAddConnectTime = Tick64();

 c = s->Connection;

 Inc(c->CurrentNumConnection);
 LockList(c->ConnectingThreads);
 {

  Add(c->ConnectingThreads, t);
  AddRef(t->ref);
 }
 UnlockList(c->ConnectingThreads);


 NoticeThreadInit(t);

 Debug("Additional Connection #%u\n", Count(c->CurrentNumConnection));


 if (ClientAdditionalConnect(c, t) == 0)
 {

  Dec(c->CurrentNumConnection);

  if (c->AdditionalConnectionFailedCounter == 0)
  {
   c->LastCounterResetTick = Tick64();
  }

  c->AdditionalConnectionFailedCounter++;

  if ((c->LastCounterResetTick + (UINT64)ADDITIONAL_CONNECTION_COUNTER_RESET_INTERVAL) <= Tick64())
  {

   c->AdditionalConnectionFailedCounter = 0;
   c->LastCounterResetTick = Tick64();
  }
 }
 else
 {
  s->LastTryAddConnectTime = Tick64();
  c->AdditionalConnectionFailedCounter = 0;
  c->LastCounterResetTick = Tick64();
 }


 LockList(c->ConnectingThreads);
 {

  if (Delete(c->ConnectingThreads, t))
  {
   ReleaseThread(t);
  }
 }
 UnlockList(c->ConnectingThreads);
 ReleaseSession(s);
}
