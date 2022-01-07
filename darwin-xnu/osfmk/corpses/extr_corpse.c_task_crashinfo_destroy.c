
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int kern_return_t ;
typedef TYPE_1__* kcdata_descriptor_t ;
struct TYPE_4__ {int kcd_user_flags; } ;


 int CORPSE_CRASHINFO_HAS_REF ;
 int KERN_INVALID_ARGUMENT ;
 int kcdata_memory_destroy (TYPE_1__*) ;
 int task_crashinfo_release_ref (int) ;

kern_return_t
task_crashinfo_destroy(kcdata_descriptor_t data)
{
 if (!data) {
  return KERN_INVALID_ARGUMENT;
 }
 if (data->kcd_user_flags & CORPSE_CRASHINFO_HAS_REF) {
  task_crashinfo_release_ref(data->kcd_user_flags);
 }
 return kcdata_memory_destroy(data);
}
