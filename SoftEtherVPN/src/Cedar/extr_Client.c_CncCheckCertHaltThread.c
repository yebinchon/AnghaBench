
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int Sock; int Event; scalar_t__ HaltThread; TYPE_1__* Session; } ;
struct TYPE_3__ {scalar_t__ Halt; } ;
typedef int THREAD ;
typedef TYPE_2__ CNC_CONNECT_ERROR_DLG_THREAD_PARAM ;


 int Disconnect (int ) ;
 int Wait (int ,int) ;

void CncCheckCertHaltThread(THREAD *thread, void *param)
{
 CNC_CONNECT_ERROR_DLG_THREAD_PARAM *dp = (CNC_CONNECT_ERROR_DLG_THREAD_PARAM *)param;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 while (1)
 {
  if (dp->Session->Halt || dp->HaltThread)
  {
   break;
  }

  Wait(dp->Event, 100);
 }

 Disconnect(dp->Sock);
}
