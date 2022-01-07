
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int vm_page_lock_queues () ;
 int vm_page_unlock_queues () ;
 int vm_purgeable_object_purge_one (int,int ) ;

boolean_t
vm_purgeable_object_purge_one_unlocked(
 int force_purge_below_group)
{
 boolean_t retval;

 vm_page_lock_queues();
 retval = vm_purgeable_object_purge_one(force_purge_below_group, 0);
 vm_page_unlock_queues();

 return retval;
}
