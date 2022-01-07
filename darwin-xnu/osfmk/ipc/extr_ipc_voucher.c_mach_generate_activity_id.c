
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mach_generate_activity_id_args {scalar_t__ count; int activity_id; } ;
typedef int kern_return_t ;
typedef int activity_id ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 scalar_t__ MACH_ACTIVITY_ID_COUNT_MAX ;
 int copyout (int *,int ,int) ;
 int generate_activity_id (scalar_t__) ;

kern_return_t
mach_generate_activity_id(
 struct mach_generate_activity_id_args *args)
{
 uint64_t activity_id;
 kern_return_t kr = KERN_SUCCESS;

 if (args->count <= 0 || args->count > MACH_ACTIVITY_ID_COUNT_MAX) {
  return KERN_INVALID_ARGUMENT;
 }

 activity_id = generate_activity_id(args->count);
 kr = copyout(&activity_id, args->activity_id, sizeof (activity_id));

 return (kr);
}
