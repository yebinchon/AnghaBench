
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int UnicastCount; int UnicastBytes; int BroadcastCount; int BroadcastBytes; } ;
struct TYPE_5__ {int UnicastCount; int UnicastBytes; int BroadcastCount; int BroadcastBytes; } ;
struct TYPE_7__ {TYPE_2__ Send; TYPE_1__ Recv; } ;
typedef TYPE_3__ TRAFFIC ;
typedef int PACK ;


 int PackAddInt64Ex (int *,char*,int ,int ,int ) ;

void OutRpcTrafficEx(TRAFFIC *t, PACK *p, UINT i, UINT num)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt64Ex(p, "Ex.Recv.BroadcastBytes", t->Recv.BroadcastBytes, i, num);
 PackAddInt64Ex(p, "Ex.Recv.BroadcastCount", t->Recv.BroadcastCount, i, num);
 PackAddInt64Ex(p, "Ex.Recv.UnicastBytes", t->Recv.UnicastBytes, i, num);
 PackAddInt64Ex(p, "Ex.Recv.UnicastCount", t->Recv.UnicastCount, i, num);
 PackAddInt64Ex(p, "Ex.Send.BroadcastBytes", t->Send.BroadcastBytes, i, num);
 PackAddInt64Ex(p, "Ex.Send.BroadcastCount", t->Send.BroadcastCount, i, num);
 PackAddInt64Ex(p, "Ex.Send.UnicastBytes", t->Send.UnicastBytes, i, num);
 PackAddInt64Ex(p, "Ex.Send.UnicastCount", t->Send.UnicastCount, i, num);
}
