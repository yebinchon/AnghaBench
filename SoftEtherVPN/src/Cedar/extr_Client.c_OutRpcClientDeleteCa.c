
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Key; } ;
typedef TYPE_1__ RPC_CLIENT_DELETE_CA ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;

void OutRpcClientDeleteCa(PACK *p, RPC_CLIENT_DELETE_CA *c)
{

 if (c == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "Key", c->Key);
}
