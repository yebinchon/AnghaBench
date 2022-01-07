
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {scalar_t__ NumIpTable; int * IpTables; } ;
typedef int RPC_ENUM_IP_TABLE_ITEM ;
typedef TYPE_1__ RPC_ENUM_IP_TABLE ;


 int Copy (int *,int *,int) ;
 int * ReAlloc (int *,int) ;

void AdjoinRpcEnumIpTable(RPC_ENUM_IP_TABLE *dest, RPC_ENUM_IP_TABLE *src)
{
 UINT old_num;
 UINT i, n;
 if (dest == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 if (src->NumIpTable == 0)
 {
  return;
 }

 old_num = dest->NumIpTable;
 dest->NumIpTable += src->NumIpTable;
 dest->IpTables = ReAlloc(dest->IpTables, sizeof(RPC_ENUM_IP_TABLE_ITEM) * dest->NumIpTable);

 n = 0;
 for (i = old_num;i < dest->NumIpTable;i++)
 {
  Copy(&dest->IpTables[i], &src->IpTables[n++], sizeof(RPC_ENUM_IP_TABLE_ITEM));
 }
}
