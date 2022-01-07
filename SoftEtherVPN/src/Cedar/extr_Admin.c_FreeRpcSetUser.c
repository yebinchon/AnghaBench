
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Policy; int AuthType; int AuthData; } ;
typedef TYPE_1__ RPC_SET_USER ;


 int Free (scalar_t__) ;
 int FreeRpcAuthData (int ,int ) ;

void FreeRpcSetUser(RPC_SET_USER *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 FreeRpcAuthData(t->AuthData, t->AuthType);
 if (t->Policy)
 {
  Free(t->Policy);
 }
}
