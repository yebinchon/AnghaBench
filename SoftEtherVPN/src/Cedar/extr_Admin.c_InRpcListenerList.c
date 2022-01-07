
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int NumPort; void** Errors; void** Enables; int * Ports; } ;
typedef TYPE_1__ RPC_LISTENER_LIST ;
typedef int PACK ;


 void* PackGetBoolEx (int *,char*,size_t) ;
 int PackGetIndexCount (int *,char*) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int Zero (TYPE_1__*,int) ;
 void* ZeroMalloc (int) ;

void InRpcListenerList(RPC_LISTENER_LIST *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_LISTENER_LIST));
 t->NumPort = PackGetIndexCount(p, "Ports");
 t->Ports = ZeroMalloc(sizeof(UINT) * t->NumPort);
 t->Enables = ZeroMalloc(sizeof(UINT) * t->NumPort);
 t->Errors = ZeroMalloc(sizeof(UINT) * t->NumPort);
 for (i = 0;i < t->NumPort;i++)
 {
  t->Ports[i] = PackGetIntEx(p, "Ports", i);
  t->Enables[i] = PackGetBoolEx(p, "Enables", i);
  t->Errors[i] = PackGetBoolEx(p, "Errors", i);
 }
}
