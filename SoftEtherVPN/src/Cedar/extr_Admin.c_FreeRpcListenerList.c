
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Errors; int Enables; int Ports; } ;
typedef TYPE_1__ RPC_LISTENER_LIST ;


 int Free (int ) ;

void FreeRpcListenerList(RPC_LISTENER_LIST *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 Free(t->Ports);
 Free(t->Enables);
 Free(t->Errors);
}
