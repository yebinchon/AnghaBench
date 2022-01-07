
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_16__ {int RemotePort; int RemoteHostname; } ;
struct TYPE_15__ {int Halt; int Print; int Param; scalar_t__ IdSeed; int WorkerList; } ;
struct TYPE_14__ {scalar_t__ Id; int LastCommTime; scalar_t__ GiveupSpan; TYPE_4__* Sock; } ;
struct TYPE_13__ {int NewSocketArrived; int SockEvent; int TtsSockList; } ;
typedef TYPE_1__ TTS_WORKER ;
typedef TYPE_2__ TTS_SOCK ;
typedef TYPE_3__ TTS ;
typedef TYPE_4__ SOCK ;


 TYPE_4__* Accept (TYPE_4__*) ;
 int AcceptInitEx (TYPE_4__*,int) ;
 int Insert (int ,TYPE_2__*) ;
 TYPE_1__* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int SetSockEvent (int ) ;
 int SleepThread (int) ;
 int Tick64 () ;
 int TtPrint (int ,int ,int *) ;
 int UniFormat (int *,int,int ,scalar_t__,int ,int ) ;
 int UnlockList (int ) ;
 TYPE_2__* ZeroMalloc (int) ;
 int _UU (char*) ;

void TtsAcceptProc(TTS *tts, SOCK *listen_socket)
{
 wchar_t tmp[MAX_SIZE];
 UINT seed = 0;

 if (tts == ((void*)0) || listen_socket == ((void*)0))
 {
  return;
 }

 while (tts->Halt == 0)
 {
  SOCK *s;

  s = Accept(listen_socket);

  if (s == ((void*)0))
  {
   if (tts->Halt == 0)
   {
    SleepThread(10);
   }
   continue;
  }
  else
  {
   UINT num, i;
   TTS_WORKER *w;


   AcceptInitEx(s, 1);


   num = LIST_NUM(tts->WorkerList);

   i = seed % num;

   seed++;

   w = LIST_DATA(tts->WorkerList, i);

   w->NewSocketArrived = 1;
   LockList(w->TtsSockList);
   {
    TTS_SOCK *ts = ZeroMalloc(sizeof(TTS_SOCK));

    ts->Id = (++tts->IdSeed);
    ts->Sock = s;

    ts->GiveupSpan = (UINT64)(10 * 60 * 1000);
    ts->LastCommTime = Tick64();

    UniFormat(tmp, sizeof(tmp), _UU("TTS_ACCEPTED"), ts->Id,
     s->RemoteHostname, s->RemotePort);
    TtPrint(tts->Param, tts->Print, tmp);

    Insert(w->TtsSockList, ts);
    w->NewSocketArrived = 1;
   }
   UnlockList(w->TtsSockList);

   SetSockEvent(w->SockEvent);
  }
 }
}
