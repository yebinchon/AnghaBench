
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumGroup; TYPE_1__* Groups; int HubName; } ;
struct TYPE_4__ {int DenyAccess; int NumUsers; int Note; int Realname; int Name; } ;
typedef TYPE_1__ RPC_ENUM_GROUP_ITEM ;
typedef TYPE_2__ RPC_ENUM_GROUP ;
typedef int PACK ;


 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddUniStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumGroup(PACK *p, RPC_ENUM_GROUP *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);

 PackSetCurrentJsonGroupName(p, "GroupList");
 for (i = 0;i < t->NumGroup;i++)
 {
  RPC_ENUM_GROUP_ITEM *e = &t->Groups[i];

  PackAddStrEx(p, "Name", e->Name, i, t->NumGroup);
  PackAddUniStrEx(p, "Realname", e->Realname, i, t->NumGroup);
  PackAddUniStrEx(p, "Note", e->Note, i, t->NumGroup);
  PackAddIntEx(p, "NumUsers", e->NumUsers, i, t->NumGroup);
  PackAddBoolEx(p, "DenyAccess", e->DenyAccess, i, t->NumGroup);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
