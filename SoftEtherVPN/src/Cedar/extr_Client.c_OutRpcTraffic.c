
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int UnicastCount; int UnicastBytes; int BroadcastCount; int BroadcastBytes; } ;
struct TYPE_6__ {int UnicastCount; int UnicastBytes; int BroadcastCount; int BroadcastBytes; } ;
struct TYPE_7__ {TYPE_1__ Send; TYPE_2__ Recv; } ;
typedef TYPE_3__ TRAFFIC ;
typedef int PACK ;


 int PackAddInt64 (int *,char*,int ) ;

void OutRpcTraffic(PACK *p, TRAFFIC *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt64(p, "Recv.BroadcastBytes", t->Recv.BroadcastBytes);
 PackAddInt64(p, "Recv.BroadcastCount", t->Recv.BroadcastCount);
 PackAddInt64(p, "Recv.UnicastBytes", t->Recv.UnicastBytes);
 PackAddInt64(p, "Recv.UnicastCount", t->Recv.UnicastCount);
 PackAddInt64(p, "Send.BroadcastBytes", t->Send.BroadcastBytes);
 PackAddInt64(p, "Send.BroadcastCount", t->Send.BroadcastCount);
 PackAddInt64(p, "Send.UnicastBytes", t->Send.UnicastBytes);
 PackAddInt64(p, "Send.UnicastCount", t->Send.UnicastCount);
}
