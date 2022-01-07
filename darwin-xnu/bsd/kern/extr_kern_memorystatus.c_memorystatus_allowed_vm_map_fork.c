
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int task_t ;
typedef int boolean_t ;


 int MEMORYSTATUS_VM_MAP_FORK_ALLOWED ;
 int MEMORYSTATUS_VM_MAP_FORK_NOT_ALLOWED ;
 int TRUE ;
 int get_task_phys_footprint (int ) ;
 scalar_t__ max_task_footprint_mb ;
 int printf (char*,int,int) ;
 int set_vm_map_fork_pidwatch (int ,int ) ;

boolean_t
memorystatus_allowed_vm_map_fork(task_t task)
{
 boolean_t is_allowed = TRUE;
 set_vm_map_fork_pidwatch(task, MEMORYSTATUS_VM_MAP_FORK_ALLOWED);
 return (is_allowed);

}
