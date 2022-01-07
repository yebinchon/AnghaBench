
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_CONNECT ;
typedef int PACK ;


 int PackGetUniStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcClientConnect(RPC_CLIENT_CONNECT *c, PACK *p)
{

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(c, sizeof(RPC_CLIENT_CONNECT));

 PackGetUniStr(p, "AccountName", c->AccountName, sizeof(c->AccountName));
}
