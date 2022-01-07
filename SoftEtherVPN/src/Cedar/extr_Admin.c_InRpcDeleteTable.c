
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Key; int HubName; } ;
typedef TYPE_1__ RPC_DELETE_TABLE ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcDeleteTable(RPC_DELETE_TABLE *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_DELETE_TABLE));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->Key = PackGetInt(p, "Key");
}
