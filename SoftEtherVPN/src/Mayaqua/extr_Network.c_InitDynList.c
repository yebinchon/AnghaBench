
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NewList (int *) ;
 int g_dyn_value_list ;

void InitDynList()
{
 g_dyn_value_list = NewList(((void*)0));
}
