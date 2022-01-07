
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Policy; } ;
typedef TYPE_1__ RPC_SET_GROUP ;


 int Free (int ) ;

void FreeRpcSetGroup(RPC_SET_GROUP *t)
{
 Free(t->Policy);
}
