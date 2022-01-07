
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {void* UnicastCount; void* UnicastBytes; void* BroadcastCount; void* BroadcastBytes; } ;
struct TYPE_6__ {void* UnicastCount; void* UnicastBytes; void* BroadcastCount; void* BroadcastBytes; } ;
struct TYPE_8__ {TYPE_2__ Send; TYPE_1__ Recv; } ;
typedef TYPE_3__ TRAFFIC ;
typedef int PACK ;


 void* PackGetInt64Ex (int *,char*,int ) ;
 int Zero (TYPE_3__*,int) ;

void InRpcTrafficEx(TRAFFIC *t, PACK *p, UINT i)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(TRAFFIC));
 t->Recv.BroadcastBytes = PackGetInt64Ex(p, "Ex.Recv.BroadcastBytes", i);
 t->Recv.BroadcastCount = PackGetInt64Ex(p, "Ex.Recv.BroadcastCount", i);
 t->Recv.UnicastBytes = PackGetInt64Ex(p, "Ex.Recv.UnicastBytes", i);
 t->Recv.UnicastCount = PackGetInt64Ex(p, "Ex.Recv.UnicastCount", i);
 t->Send.BroadcastBytes = PackGetInt64Ex(p, "Ex.Send.BroadcastBytes", i);
 t->Send.BroadcastCount = PackGetInt64Ex(p, "Ex.Send.BroadcastCount", i);
 t->Send.UnicastBytes = PackGetInt64Ex(p, "Ex.Send.UnicastBytes", i);
 t->Send.UnicastCount = PackGetInt64Ex(p, "Ex.Send.UnicastCount", i);
}
