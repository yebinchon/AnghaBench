
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int UniStrValue; int StrValue; int Int64Value; int IntValue; } ;
typedef TYPE_1__ RPC_TEST ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 int PackGetInt64 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetUniStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcTest(RPC_TEST *t, PACK *p)
{
 Zero(t, sizeof(RPC_TEST));
 t->IntValue = PackGetInt(p, "IntValue");
 t->Int64Value = PackGetInt64(p, "Int64Value");
 PackGetStr(p, "StrValue", t->StrValue, sizeof(t->StrValue));
 PackGetUniStr(p, "UniStrValue", t->UniStrValue, sizeof(t->UniStrValue));
}
