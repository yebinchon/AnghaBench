
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Key; } ;
typedef TYPE_1__ RPC_CLIENT_DELETE_CA ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcClientDeleteCa(RPC_CLIENT_DELETE_CA *c, PACK *p)
{

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(c, sizeof(RPC_CLIENT_DELETE_CA));
 c->Key = PackGetInt(p, "Key");
}
