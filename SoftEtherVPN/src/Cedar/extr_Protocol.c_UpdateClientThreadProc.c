
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int DisableCheck; } ;
struct TYPE_6__ {int HaltEvent; TYPE_1__ Setting; scalar_t__ HaltFlag; int Param; scalar_t__ (* IsForegroundCb ) (TYPE_2__*,int ) ;} ;
typedef TYPE_2__ UPDATE_CLIENT ;
typedef int THREAD ;


 int GenRandInterval (int ,int ) ;
 int UPDATE_CHECK_INTERVAL_MAX ;
 int UPDATE_CHECK_INTERVAL_MIN ;
 int UpdateClientThreadMain (TYPE_2__*) ;
 int Wait (int ,int) ;
 scalar_t__ stub1 (TYPE_2__*,int ) ;

void UpdateClientThreadProc(THREAD *thread, void *param)
{
 UPDATE_CLIENT *c = (UPDATE_CLIENT *)param;
 bool first_loop = 1;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 while (1)
 {

  if (c->HaltFlag)
  {
   break;
  }

  if (first_loop == 0)
  {

   if (c->IsForegroundCb != ((void*)0))
   {
    while (1)
    {
     if (c->HaltFlag)
     {
      break;
     }

     if (c->IsForegroundCb(c, c->Param))
     {
      break;
     }

     Wait(c->HaltEvent, 1000);
    }
   }
  }

  first_loop = 0;

  if (c->HaltFlag)
  {
   break;
  }

  if (c->Setting.DisableCheck == 0)
  {
   UpdateClientThreadMain(c);
  }


  Wait(c->HaltEvent, GenRandInterval(UPDATE_CHECK_INTERVAL_MIN, UPDATE_CHECK_INTERVAL_MAX));
 }
}
