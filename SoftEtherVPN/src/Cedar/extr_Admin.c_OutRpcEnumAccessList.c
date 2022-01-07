
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {size_t NumAccess; int * Accesses; int HubName; } ;
typedef TYPE_1__ RPC_ENUM_ACCESS_LIST ;
typedef int PACK ;
typedef int ACCESS ;


 int OutRpcAccessEx (int *,int *,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumAccessList(PACK *p, RPC_ENUM_ACCESS_LIST *a)
{
 UINT i;

 if (a == ((void*)0) || p == ((void*)0))
 {
  return;
 }
 PackAddStr(p, "HubName", a->HubName);

 PackSetCurrentJsonGroupName(p, "AccessList");
 for (i = 0;i < a->NumAccess;i++)
 {
  ACCESS *e = &a->Accesses[i];

  OutRpcAccessEx(p, e, i, a->NumAccess);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
