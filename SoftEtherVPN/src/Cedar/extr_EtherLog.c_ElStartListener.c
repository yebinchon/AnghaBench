
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Port; int Cedar; int Listener; void* AdminSockList; void* AdminThreadList; } ;
typedef TYPE_1__ EL ;


 scalar_t__ EL_ADMIN_PORT ;
 int ElListenerProc ;
 int LISTENER_TCP ;
 void* NewList (int *) ;
 int NewListenerEx (int ,int ,scalar_t__,int ,TYPE_1__*) ;

void ElStartListener(EL *e)
{

 if (e == ((void*)0))
 {
  return;
 }

 e->AdminThreadList = NewList(((void*)0));
 e->AdminSockList = NewList(((void*)0));

 e->Listener = NewListenerEx(e->Cedar, LISTENER_TCP, e->Port == 0 ? EL_ADMIN_PORT : e->Port,
  ElListenerProc, e);
}
