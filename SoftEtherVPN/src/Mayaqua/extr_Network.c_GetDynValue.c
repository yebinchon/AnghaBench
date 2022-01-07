
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int Value; int Name; } ;
typedef TYPE_1__ DYN_VALUE ;


 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int UnlockList (int *) ;
 int * g_dyn_value_list ;

UINT64 GetDynValue(char *name)
{
 UINT64 ret = 0;

 if (name == ((void*)0))
 {
  return 0;
 }

 if (g_dyn_value_list == ((void*)0))
 {
  return 0;
 }

 LockList(g_dyn_value_list);
 {
  UINT i;

  for (i = 0; i < LIST_NUM(g_dyn_value_list);i++)
  {
   DYN_VALUE *vv = LIST_DATA(g_dyn_value_list, i);

   if (StrCmpi(vv->Name, name) == 0)
   {
    ret = vv->Value;
    break;
   }
  }
 }
 UnlockList(g_dyn_value_list);

 return ret;
}
