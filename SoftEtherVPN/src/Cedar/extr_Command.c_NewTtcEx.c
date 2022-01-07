
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT64 ;
typedef void* UINT ;
struct TYPE_5__ {int NumTcp; scalar_t__ Type; int Double; int Raw; int* Cancel; int Thread; int * Print; void* Param; int ErrorCode; int * StartEvent; int Span; int Host; void* Port; int InitedEvent; } ;
typedef int TT_PRINT_PROC ;
typedef TYPE_1__ TTC ;
typedef int EVENT ;


 int ERR_NO_ERROR ;
 int NewEvent () ;
 int NewThread (int ,TYPE_1__*) ;
 int StrCpy (int ,int,char*) ;
 scalar_t__ TRAFFIC_TYPE_FULL ;
 int TtPrint (void*,int *,int ) ;
 int TtcThread ;
 int WaitThreadInit (int ) ;
 TYPE_1__* ZeroMalloc (int) ;
 int _UU (char*) ;

TTC *NewTtcEx(char *host, UINT port, UINT numtcp, UINT type, UINT64 span, bool dbl, bool raw, TT_PRINT_PROC *print_proc, void *param, EVENT *start_event, bool *cancel)
{
 TTC *ttc;

 ttc = ZeroMalloc(sizeof(TTC));
 ttc->InitedEvent = NewEvent();
 ttc->Port = port;
 StrCpy(ttc->Host, sizeof(ttc->Host), host);
 ttc->NumTcp = numtcp;
 ttc->Type = type;
 ttc->Span = span;
 ttc->Double = dbl;
 ttc->Raw = raw;
 ttc->StartEvent = start_event;
 ttc->Cancel = cancel;

 if (ttc->Type == TRAFFIC_TYPE_FULL && ttc->NumTcp < 2)
 {
  ttc->NumTcp = 2;
 }

 ttc->Print = print_proc;
 ttc->Param = param;
 ttc->ErrorCode = ERR_NO_ERROR;

 TtPrint(ttc->Param, ttc->Print, _UU("TTC_INIT"));

 ttc->Thread = NewThread(TtcThread, ttc);
 WaitThreadInit(ttc->Thread);

 return ttc;
}
