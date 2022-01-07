
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct TYPE_3__ {int task_nonvolatile_objects; } ;


 int OSAddAtomic (int,int*) ;
 int assert (int) ;

void
vm_purgeable_nonvolatile_owner_update(
 task_t owner,
 int delta)
{
 if (owner == ((void*)0) || delta == 0) {
  return;
 }

 if (delta > 0) {
  assert(owner->task_nonvolatile_objects >= 0);
  OSAddAtomic(delta, &owner->task_nonvolatile_objects);
  assert(owner->task_nonvolatile_objects > 0);
 } else {
  assert(owner->task_nonvolatile_objects > delta);
  OSAddAtomic(delta, &owner->task_nonvolatile_objects);
  assert(owner->task_nonvolatile_objects >= 0);
 }
}
