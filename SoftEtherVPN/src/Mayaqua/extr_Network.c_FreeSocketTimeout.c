
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unblocked; int thread; int cancel; } ;
typedef TYPE_1__ SOCKET_TIMEOUT_PARAM ;


 int Cancel (int ) ;
 int Free (TYPE_1__*) ;
 int INFINITE ;
 int ReleaseCancel (int ) ;
 int ReleaseThread (int ) ;
 int WaitThread (int ,int ) ;

void FreeSocketTimeout(SOCKET_TIMEOUT_PARAM *ttp)
{
 if(ttp == ((void*)0))
 {
  return;
 }

 ttp->unblocked = 1;
 Cancel(ttp->cancel);
 WaitThread(ttp->thread, INFINITE);
 ReleaseCancel(ttp->cancel);
 ReleaseThread(ttp->thread);
 Free(ttp);

 return;
}
