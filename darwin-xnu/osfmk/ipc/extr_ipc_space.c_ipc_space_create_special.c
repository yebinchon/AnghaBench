
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int kern_return_t ;
typedef TYPE_1__* ipc_space_t ;
struct TYPE_6__ {int is_bits; int is_node_id; scalar_t__ is_high_mod; scalar_t__ is_low_mod; scalar_t__ is_table_next; int is_task; int is_table; } ;


 int HOST_LOCAL_NODE ;
 int IE_NULL ;
 int IS_INACTIVE ;
 TYPE_1__* IS_NULL ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int TASK_NULL ;
 TYPE_1__* is_alloc () ;
 int is_lock_init (TYPE_1__*) ;

kern_return_t
ipc_space_create_special(
 ipc_space_t *spacep)
{
 ipc_space_t space;

 space = is_alloc();
 if (space == IS_NULL)
  return KERN_RESOURCE_SHORTAGE;

 is_lock_init(space);

 space->is_bits = IS_INACTIVE | 1;
 space->is_table = IE_NULL;
 space->is_task = TASK_NULL;
 space->is_table_next = 0;
 space->is_low_mod = 0;
 space->is_high_mod = 0;
 space->is_node_id = HOST_LOCAL_NODE;

 *spacep = space;
 return KERN_SUCCESS;
}
