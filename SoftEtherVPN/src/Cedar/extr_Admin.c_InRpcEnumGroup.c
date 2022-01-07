
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumGroup; TYPE_1__* Groups; int HubName; } ;
struct TYPE_6__ {int DenyAccess; int NumUsers; int Note; int Realname; int Name; } ;
typedef TYPE_1__ RPC_ENUM_GROUP_ITEM ;
typedef TYPE_2__ RPC_ENUM_GROUP ;
typedef int PACK ;


 int PackGetBoolEx (int *,char*,size_t) ;
 int PackGetIndexCount (int *,char*) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int PackGetUniStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumGroup(RPC_ENUM_GROUP *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_GROUP));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->NumGroup = PackGetIndexCount(p, "Name");
 t->Groups = ZeroMalloc(sizeof(RPC_ENUM_GROUP_ITEM) * t->NumGroup);

 for (i = 0;i < t->NumGroup;i++)
 {
  RPC_ENUM_GROUP_ITEM *e = &t->Groups[i];

  PackGetStrEx(p, "Name", e->Name, sizeof(e->Name), i);
  PackGetUniStrEx(p, "Realname", e->Realname, sizeof(e->Realname), i);
  PackGetUniStrEx(p, "Note", e->Note, sizeof(e->Note), i);
  e->NumUsers = PackGetIntEx(p, "NumUsers", i);
  e->DenyAccess = PackGetBoolEx(p, "DenyAccess", i);
 }
}
