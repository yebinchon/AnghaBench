
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int MacTables; } ;
typedef TYPE_1__ RPC_ENUM_MAC_TABLE ;


 int Free (int ) ;

void FreeRpcEnumMacTable(RPC_ENUM_MAC_TABLE *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 Free(t->MacTables);
}
