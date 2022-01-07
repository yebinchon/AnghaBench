
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_object_t ;
typedef int memory_object_copy_strategy_t ;
typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_8__ {int can_persist; void* pager_ready; int copy_strategy; int internal; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;


 void* TRUE ;
 int VM_OBJECT_EVENT_PAGER_READY ;
 TYPE_1__* VM_OBJECT_NULL ;
 int XPR (int ,char*,TYPE_1__*,int,int ,int ,int ) ;
 int XPR_MEMORY_OBJECT ;
 int assert (int) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_unlock (TYPE_1__*) ;
 int vm_object_wakeup (TYPE_1__*,int ) ;

__attribute__((used)) static kern_return_t
vm_object_set_attributes_common(
 vm_object_t object,
 boolean_t may_cache,
 memory_object_copy_strategy_t copy_strategy)
{
 boolean_t object_became_ready;

        XPR(XPR_MEMORY_OBJECT,
     "m_o_set_attr_com, object 0x%X flg %x strat %d\n",
     object, (may_cache&1), copy_strategy, 0, 0);

 if (object == VM_OBJECT_NULL)
  return(KERN_INVALID_ARGUMENT);





 switch(copy_strategy) {
  case 128:
  case 129:
   break;
  default:
   return(KERN_INVALID_ARGUMENT);
 }

 if (may_cache)
  may_cache = TRUE;

 vm_object_lock(object);




 assert(!object->internal);
 object_became_ready = !object->pager_ready;
 object->copy_strategy = copy_strategy;
 object->can_persist = may_cache;






 if (object_became_ready) {
  object->pager_ready = TRUE;
  vm_object_wakeup(object, VM_OBJECT_EVENT_PAGER_READY);
 }

 vm_object_unlock(object);

 return(KERN_SUCCESS);
}
