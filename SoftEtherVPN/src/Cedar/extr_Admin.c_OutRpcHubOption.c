
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NoEnum; int MaxSession; } ;
typedef TYPE_1__ RPC_HUB_OPTION ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddInt (int *,char*,int ) ;

void OutRpcHubOption(PACK *p, RPC_HUB_OPTION *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "MaxSession", t->MaxSession);
 PackAddBool(p, "NoEnum", t->NoEnum);
}
