
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t NumPort; int * Errors; int * Enables; int * Ports; } ;
typedef TYPE_1__ RPC_LISTENER_LIST ;
typedef int PACK ;


 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcListenerList(PACK *p, RPC_LISTENER_LIST *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackSetCurrentJsonGroupName(p, "ListenerList");
 for (i = 0;i < t->NumPort;i++)
 {
  PackAddIntEx(p, "Ports", t->Ports[i], i, t->NumPort);
  PackAddBoolEx(p, "Enables", t->Enables[i], i, t->NumPort);
  PackAddBoolEx(p, "Errors", t->Errors[i], i, t->NumPort);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
