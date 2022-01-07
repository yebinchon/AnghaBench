
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* UnicastCount; void* UnicastBytes; void* BroadcastCount; void* BroadcastBytes; } ;
struct TYPE_6__ {void* UnicastCount; void* UnicastBytes; void* BroadcastCount; void* BroadcastBytes; } ;
struct TYPE_8__ {TYPE_2__ Send; TYPE_1__ Recv; } ;
typedef TYPE_3__ TRAFFIC ;
typedef int PACK ;


 void* PackGetInt64 (int *,char*) ;
 int Zero (TYPE_3__*,int) ;

void InRpcTraffic(TRAFFIC *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(TRAFFIC));
 t->Recv.BroadcastBytes = PackGetInt64(p, "Recv.BroadcastBytes");
 t->Recv.BroadcastCount = PackGetInt64(p, "Recv.BroadcastCount");
 t->Recv.UnicastBytes = PackGetInt64(p, "Recv.UnicastBytes");
 t->Recv.UnicastCount = PackGetInt64(p, "Recv.UnicastCount");
 t->Send.BroadcastBytes = PackGetInt64(p, "Send.BroadcastBytes");
 t->Send.BroadcastCount = PackGetInt64(p, "Send.BroadcastCount");
 t->Send.UnicastBytes = PackGetInt64(p, "Send.UnicastBytes");
 t->Send.UnicastCount = PackGetInt64(p, "Send.UnicastCount");
}
