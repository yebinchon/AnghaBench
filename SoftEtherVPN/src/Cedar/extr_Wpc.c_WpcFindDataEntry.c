
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int EntryName; } ;
typedef TYPE_1__ WPC_ENTRY ;
typedef scalar_t__ UINT ;
typedef int LIST ;


 scalar_t__ Cmp (int ,char*,int) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int WPC_DATA_ENTRY_SIZE ;
 int WpcFillEntryName (char*,char*) ;

WPC_ENTRY *WpcFindDataEntry(LIST *o, char *name)
{
 UINT i;
 char name_str[WPC_DATA_ENTRY_SIZE];

 if (o == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 WpcFillEntryName(name_str, name);

 for (i = 0;i < LIST_NUM(o);i++)
 {
  WPC_ENTRY *e = LIST_DATA(o, i);

  if (Cmp(e->EntryName, name_str, WPC_DATA_ENTRY_SIZE) == 0)
  {
   return e;
  }
 }

 return ((void*)0);
}
