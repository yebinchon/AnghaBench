
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef scalar_t__ UINT ;
struct TYPE_14__ {int ref; } ;
struct TYPE_13__ {int SockEvent; int * WorkThread; int WorkerList; TYPE_5__* ListenSocketV6; TYPE_5__* ListenSocket; int Print; int Param; int * IPv6AcceptThread; struct TYPE_13__* Tts; int Port; int ErrorCode; } ;
typedef TYPE_1__ TTS_WORKER ;
typedef TYPE_1__ TTS ;
typedef int THREAD ;


 int Add (int ,TYPE_1__*) ;
 int AddRef (int ) ;
 int ERR_INTERNAL_ERROR ;
 int Free (TYPE_1__*) ;
 scalar_t__ GetNumberOfCpu () ;
 int INFINITE ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 TYPE_5__* ListenEx (int ,int) ;
 TYPE_5__* ListenEx6 (int ,int) ;
 int MAX_SIZE ;
 void* NewThread (int ,TYPE_1__*) ;
 int NoticeThreadInit (int *) ;
 int ReleaseSock (TYPE_5__*) ;
 int ReleaseSockEvent (int ) ;
 int ReleaseThread (int *) ;
 int SetSockEvent (int ) ;
 int TtPrint (int ,int ,int *) ;
 int TtsAcceptProc (TYPE_1__*,TYPE_5__*) ;
 int TtsIPv6AcceptThread ;
 int TtsWorkerThread ;
 int UniFormat (int *,int,int *,int ) ;
 int WaitThread (int *,int ) ;
 int WaitThreadInit (int *) ;
 TYPE_1__* ZeroMalloc (int) ;
 int * _UU (char*) ;

void TtsListenThread(THREAD *thread, void *param)
{
 TTS *tts;
 wchar_t tmp[MAX_SIZE];

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 tts = (TTS *)param;

 tts->ListenSocket = ((void*)0);
 tts->ListenSocket = ListenEx(tts->Port, 0);
 tts->ListenSocketV6 = ListenEx6(tts->Port, 0);

 if (tts->ListenSocket == ((void*)0) && tts->ListenSocketV6 == ((void*)0))
 {

  UniFormat(tmp, sizeof(tmp), _UU("TT_LISTEN_FAILED"), tts->Port);
  TtPrint(tts->Param, tts->Print, tmp);


  NoticeThreadInit(thread);

  tts->ErrorCode = ERR_INTERNAL_ERROR;
 }
 else
 {
  UINT i, num_worker_threads;

  UniFormat(tmp, sizeof(tmp), _UU("TTS_LISTEN_STARTED"), tts->Port);
  TtPrint(tts->Param, tts->Print, tmp);

  if (tts->ListenSocketV6 != ((void*)0))
  {
   UniFormat(tmp, sizeof(tmp), _UU("TTS_LISTEN_STARTED_V6"), tts->Port);
   TtPrint(tts->Param, tts->Print, tmp);
  }
  else
  {
   UniFormat(tmp, sizeof(tmp), _UU("TTS_LISTEN_FAILED_V6"), tts->Port);
   TtPrint(tts->Param, tts->Print, tmp);
  }

  if (tts->ListenSocket != ((void*)0))
  {
   AddRef(tts->ListenSocket->ref);
  }
  if (tts->ListenSocketV6 != ((void*)0))
  {
   AddRef(tts->ListenSocketV6->ref);
  }

  num_worker_threads = GetNumberOfCpu();


  for (i = 0;i < num_worker_threads;i++)
  {
   TTS_WORKER *w = ZeroMalloc(sizeof(TTS_WORKER));

   w->Tts = tts;
   w->WorkThread = NewThread(TtsWorkerThread, w);
   WaitThreadInit(w->WorkThread);

   Add(tts->WorkerList, w);
  }


  NoticeThreadInit(thread);


  tts->IPv6AcceptThread = ((void*)0);
  if (tts->ListenSocketV6 != ((void*)0))
  {
   tts->IPv6AcceptThread = NewThread(TtsIPv6AcceptThread, tts);
  }

  TtsAcceptProc(tts, tts->ListenSocket);

  if (tts->IPv6AcceptThread != ((void*)0))
  {
   WaitThread(tts->IPv6AcceptThread, INFINITE);
   ReleaseThread(tts->IPv6AcceptThread);
  }

  TtPrint(tts->Param, tts->Print, _UU("TTS_LISTEN_STOP"));

  ReleaseSock(tts->ListenSocket);
  ReleaseSock(tts->ListenSocketV6);

  for (i = 0;i < LIST_NUM(tts->WorkerList);i++)
  {
   TTS_WORKER *w = LIST_DATA(tts->WorkerList, i);

   SetSockEvent(w->SockEvent);


   WaitThread(w->WorkThread, INFINITE);
   ReleaseThread(w->WorkThread);
   ReleaseSockEvent(w->SockEvent);

   Free(w);
  }
 }
}
