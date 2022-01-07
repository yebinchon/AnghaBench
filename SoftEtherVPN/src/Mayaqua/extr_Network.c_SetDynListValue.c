
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {int Value; int Name; } ;
typedef TYPE_1__ DYN_VALUE ;


 int Add (int *,TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int StrCpy (int ,int,char*) ;
 int UnlockList (int *) ;
 TYPE_1__* ZeroMalloc (int) ;
 int * g_dyn_value_list ;

void SetDynListValue(char *name, UINT64 value)
{

 if (name == ((void*)0))
 {
  return;
 }

 if (g_dyn_value_list == ((void*)0))
 {
  return;
 }

 LockList(g_dyn_value_list);
 {
  UINT i;
  DYN_VALUE *v = ((void*)0);

  for (i = 0; i < LIST_NUM(g_dyn_value_list);i++)
  {
   DYN_VALUE *vv = LIST_DATA(g_dyn_value_list, i);

   if (StrCmpi(vv->Name, name) == 0)
   {
    v = vv;
    break;
   }
  }

  if (v == ((void*)0))
  {
   v = ZeroMalloc(sizeof(DYN_VALUE));
   StrCpy(v->Name, sizeof(v->Name), name);

   Add(g_dyn_value_list, v);
  }

  v->Value = value;
 }
 UnlockList(g_dyn_value_list);
}
