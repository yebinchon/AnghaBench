
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Key; int HubName; } ;
typedef TYPE_1__ RPC_DELETE_TABLE ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcDeleteTable(PACK *p, RPC_DELETE_TABLE *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddInt(p, "Key", t->Key);
}
