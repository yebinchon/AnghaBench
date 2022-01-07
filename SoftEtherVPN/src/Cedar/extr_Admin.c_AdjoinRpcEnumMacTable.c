
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {scalar_t__ NumMacTable; int * MacTables; } ;
typedef int RPC_ENUM_MAC_TABLE_ITEM ;
typedef TYPE_1__ RPC_ENUM_MAC_TABLE ;


 int Copy (int *,int *,int) ;
 int * ReAlloc (int *,int) ;

void AdjoinRpcEnumMacTable(RPC_ENUM_MAC_TABLE *dest, RPC_ENUM_MAC_TABLE *src)
{
 UINT old_num;
 UINT i, n;
 if (dest == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 if (src->NumMacTable == 0)
 {
  return;
 }

 old_num = dest->NumMacTable;
 dest->NumMacTable += src->NumMacTable;
 dest->MacTables = ReAlloc(dest->MacTables, sizeof(RPC_ENUM_MAC_TABLE_ITEM) * dest->NumMacTable);

 n = 0;
 for (i = old_num;i < dest->NumMacTable;i++)
 {
  Copy(&dest->MacTables[i], &src->MacTables[n++], sizeof(RPC_ENUM_MAC_TABLE_ITEM));
 }
}
