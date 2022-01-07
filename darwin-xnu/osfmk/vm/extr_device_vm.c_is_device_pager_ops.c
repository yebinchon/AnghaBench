
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_object_pager_ops {int dummy; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 struct memory_object_pager_ops const device_pager_ops ;

boolean_t
is_device_pager_ops(const struct memory_object_pager_ops *pager_ops)
{
 if (pager_ops == &device_pager_ops) {
  return TRUE;
 }
 return FALSE;
}
