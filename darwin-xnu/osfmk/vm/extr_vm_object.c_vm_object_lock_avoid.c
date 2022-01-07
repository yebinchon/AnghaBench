
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_object_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 int scan_object_collision ;
 scalar_t__ vm_pageout_scan_wants_object ;

boolean_t
vm_object_lock_avoid(vm_object_t object)
{
        if (object == vm_pageout_scan_wants_object) {
         scan_object_collision++;
  return TRUE;
 }
 return FALSE;
}
