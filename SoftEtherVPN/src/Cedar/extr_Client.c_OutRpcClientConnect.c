
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_CONNECT ;
typedef int PACK ;


 int PackAddUniStr (int *,char*,int ) ;

void OutRpcClientConnect(PACK *p, RPC_CLIENT_CONNECT *c)
{

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddUniStr(p, "AccountName", c->AccountName);
}
