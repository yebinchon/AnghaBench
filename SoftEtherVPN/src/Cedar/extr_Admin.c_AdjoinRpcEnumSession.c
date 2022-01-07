
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {scalar_t__ NumSession; int * Sessions; } ;
typedef int RPC_ENUM_SESSION_ITEM ;
typedef TYPE_1__ RPC_ENUM_SESSION ;


 int Copy (int *,int *,int) ;
 int * ReAlloc (int *,int) ;

void AdjoinRpcEnumSession(RPC_ENUM_SESSION *dest, RPC_ENUM_SESSION *src)
{
 UINT old_num;
 UINT i, n;
 if (dest == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 if (src->NumSession == 0)
 {
  return;
 }

 old_num = dest->NumSession;
 dest->NumSession += src->NumSession;
 dest->Sessions = ReAlloc(dest->Sessions, sizeof(RPC_ENUM_SESSION_ITEM) * dest->NumSession);

 n = 0;
 for (i = old_num;i < dest->NumSession;i++)
 {
  Copy(&dest->Sessions[i], &src->Sessions[n++], sizeof(RPC_ENUM_SESSION_ITEM));
 }
}
