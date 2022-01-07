
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_5__ {int Thread; void* IntervalLastNg; void* IntervalLastOk; int Hostname; int Lock; int HaltEvent; } ;
typedef TYPE_1__ QUERYIPTHREAD ;


 int NewEvent () ;
 int NewLock () ;
 int NewThread (int ,TYPE_1__*) ;
 int QueryIpThreadMain ;
 int StrCpy (int ,int,char*) ;
 TYPE_1__* ZeroMalloc (int) ;

QUERYIPTHREAD *NewQueryIpThread(char *hostname, UINT interval_last_ok, UINT interval_last_ng)
{
 QUERYIPTHREAD *t;

 t = ZeroMalloc(sizeof(QUERYIPTHREAD));

 t->HaltEvent = NewEvent();
 t->Lock = NewLock();
 StrCpy(t->Hostname, sizeof(t->Hostname), hostname);
 t->IntervalLastOk = interval_last_ok;
 t->IntervalLastNg = interval_last_ng;

 t->Thread = NewThread(QueryIpThreadMain, t);

 return t;
}
