
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int DYN_VALUE ;


 int Free (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;
 int * g_dyn_value_list ;

void FreeDynList()
{
 UINT i;
 if (g_dyn_value_list == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(g_dyn_value_list);i++)
 {
  DYN_VALUE *d = LIST_DATA(g_dyn_value_list, i);

  Free(d);
 }

 ReleaseList(g_dyn_value_list);

 g_dyn_value_list = ((void*)0);
}
