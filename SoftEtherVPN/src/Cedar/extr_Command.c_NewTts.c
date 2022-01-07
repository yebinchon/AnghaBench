
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int * Thread; int WorkerList; int * Print; void* Param; int Port; } ;
typedef int TT_PRINT_PROC ;
typedef TYPE_1__ TTS ;
typedef int THREAD ;


 int NewList (int *) ;
 int * NewThread (int ,TYPE_1__*) ;
 int TtPrint (void*,int *,int ) ;
 int TtsListenThread ;
 int WaitThreadInit (int *) ;
 TYPE_1__* ZeroMalloc (int) ;
 int _UU (char*) ;

TTS *NewTts(UINT port, void *param, TT_PRINT_PROC *print_proc)
{
 TTS *tts;
 THREAD *t;

 tts = ZeroMalloc(sizeof(TTS));
 tts->Port = port;
 tts->Param = param;
 tts->Print = print_proc;

 TtPrint(param, print_proc, _UU("TTS_INIT"));

 tts->WorkerList = NewList(((void*)0));


 t = NewThread(TtsListenThread, tts);
 WaitThreadInit(t);

 tts->Thread = t;

 return tts;
}
