
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * json_subitem_names; int CurrentJsonHint_GroupName; } ;
typedef TYPE_1__ PACK ;


 int AddStrToStrListDistinct (int *,char*) ;
 int ClearStr (int ,int) ;
 int * NewStrList () ;
 int StrCpy (int ,int,char*) ;

void PackSetCurrentJsonGroupName(PACK *p, char *json_group_name)
{
 if (p == ((void*)0))
 {
  return;
 }

 if (json_group_name == ((void*)0))
 {
  ClearStr(p->CurrentJsonHint_GroupName, sizeof(p->CurrentJsonHint_GroupName));
 }
 else
 {
  StrCpy(p->CurrentJsonHint_GroupName, sizeof(p->CurrentJsonHint_GroupName), json_group_name);

  if (p->json_subitem_names == ((void*)0))
  {
   p->json_subitem_names = NewStrList();
  }

  AddStrToStrListDistinct(p->json_subitem_names, json_group_name);
 }
}
