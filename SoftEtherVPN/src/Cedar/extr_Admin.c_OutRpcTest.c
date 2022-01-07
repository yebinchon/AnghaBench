
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int UniStrValue; int StrValue; int Int64Value; int IntValue; } ;
typedef TYPE_1__ RPC_TEST ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddInt64 (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddUniStr (int *,char*,int ) ;

void OutRpcTest(PACK *p, RPC_TEST *t)
{
 PackAddInt(p, "IntValue", t->IntValue);
 PackAddInt64(p, "Int64Value", t->Int64Value);
 PackAddStr(p, "StrValue", t->StrValue);
 PackAddUniStr(p, "UniStrValue", t->UniStrValue);
}
