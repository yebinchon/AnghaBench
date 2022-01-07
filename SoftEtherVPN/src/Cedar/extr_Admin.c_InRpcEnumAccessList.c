
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int NumAccess; int * Accesses; int HubName; } ;
typedef TYPE_1__ RPC_ENUM_ACCESS_LIST ;
typedef int PACK ;
typedef int ACCESS ;


 int InRpcAccessEx (int *,int *,size_t) ;
 int PackGetIndexCount (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;
 int * ZeroMalloc (int) ;

void InRpcEnumAccessList(RPC_ENUM_ACCESS_LIST *a, PACK *p)
{
 UINT i;

 if (a == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(a, sizeof(RPC_ENUM_ACCESS_LIST));
 PackGetStr(p, "HubName", a->HubName, sizeof(a->HubName));
 a->NumAccess = PackGetIndexCount(p, "Protocol");
 a->Accesses = ZeroMalloc(sizeof(ACCESS) * a->NumAccess);

 for (i = 0;i < a->NumAccess;i++)
 {
  ACCESS *e = &a->Accesses[i];

  InRpcAccessEx(e, p, i);
 }
}
