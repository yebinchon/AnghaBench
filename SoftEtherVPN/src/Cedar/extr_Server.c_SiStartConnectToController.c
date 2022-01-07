
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; int HaltEvent; int LastError; int * Server; } ;
typedef int THREAD ;
typedef int SERVER ;
typedef TYPE_1__ FARM_CONTROLLER ;


 int ERR_TRYING_TO_CONNECT ;
 int NewEvent () ;
 int NewLock () ;
 int * NewThread (int ,TYPE_1__*) ;
 int ReleaseThread (int *) ;
 int SiConnectToControllerThread ;
 int WaitThreadInit (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

FARM_CONTROLLER *SiStartConnectToController(SERVER *s)
{
 FARM_CONTROLLER *f;
 THREAD *t;

 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 f = ZeroMalloc(sizeof(FARM_CONTROLLER));
 f->Server = s;
 f->LastError = ERR_TRYING_TO_CONNECT;
 f->HaltEvent = NewEvent();
 f->lock = NewLock();

 t = NewThread(SiConnectToControllerThread, f);
 WaitThreadInit(t);
 ReleaseThread(t);

 return f;
}
