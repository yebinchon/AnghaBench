
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_2__* thread_t ;
typedef int* thread_state_t ;
typedef int thread_flavor_t ;
struct arm_vfp_state {int dummy; } ;
struct arm_saved_state64 {int esr; int far; int exception; } ;
struct arm_saved_state32 {int far; int esr; int exception; } ;
struct arm_exception_state64 {int esr; int far; int exception; } ;
struct arm_exception_state {int far; int fsr; int exception; } ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef struct arm_vfp_state arm_neon_state_t ;
typedef struct arm_vfp_state arm_neon_state64_t ;
typedef struct arm_vfp_state arm_neon_saved_state64_t ;
typedef struct arm_vfp_state arm_neon_saved_state32_t ;
typedef struct arm_vfp_state arm_legacy_debug_state_t ;
typedef struct arm_vfp_state arm_debug_state64_t ;
typedef struct arm_vfp_state arm_debug_state32_t ;
struct TYPE_7__ {int uNeon; int upcb; } ;
struct TYPE_8__ {TYPE_1__ machine; } ;




 int ARM_DEBUG_STATE32_COUNT ;

 int ARM_DEBUG_STATE64_COUNT ;


 int ARM_EXCEPTION_STATE64_COUNT ;
 int ARM_EXCEPTION_STATE_COUNT ;
 int ARM_LEGACY_DEBUG_STATE_COUNT ;


 int ARM_NEON_STATE64_COUNT ;
 int ARM_NEON_STATE_COUNT ;



 int ARM_VFPV2_STATE_COUNT ;

 int ARM_VFP_STATE_COUNT ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;


 int assert (int) ;
 int bcopy (struct arm_vfp_state*,struct arm_vfp_state*,int) ;
 int bzero (struct arm_vfp_state*,int) ;
 struct arm_vfp_state* find_debug_state32 (TYPE_2__*) ;
 struct arm_vfp_state* find_debug_state64 (TYPE_2__*) ;
 int handle_get_arm32_thread_state (int*,int*,int ) ;
 int handle_get_arm64_thread_state (int*,int*,int ) ;
 int handle_get_arm_thread_state (int*,int*,int ) ;
 struct arm_vfp_state* neon_state32 (int ) ;
 struct arm_vfp_state* neon_state64 (int ) ;
 struct arm_saved_state32* saved_state32 (int ) ;
 struct arm_saved_state64* saved_state64 (int ) ;
 int thread_is_64bit_data (TYPE_2__*) ;

kern_return_t
machine_thread_get_state(
    thread_t thread,
    thread_flavor_t flavor,
    thread_state_t tstate,
    mach_msg_type_number_t * count)
{
 switch (flavor) {
 case 129:
  if (*count < 4)
   return (KERN_INVALID_ARGUMENT);

  tstate[0] = 133;
  tstate[1] = 130;
  tstate[2] = 137;
  tstate[3] = 140;
  *count = 4;
  break;

 case 128:
  if (*count < 4)
   return (KERN_INVALID_ARGUMENT);

  tstate[0] = 133;
  tstate[1] = 130;
  tstate[2] = thread_is_64bit_data(thread) ? 136 : 137;
  tstate[3] = thread_is_64bit_data(thread) ? 138 : 139;
  *count = 4;
  break;

 case 133:
 {
  kern_return_t rn = handle_get_arm_thread_state(tstate, count, thread->machine.upcb);
  if (rn) return rn;
  break;
 }
 case 132:
 {
  if (thread_is_64bit_data(thread))
   return KERN_INVALID_ARGUMENT;

  kern_return_t rn = handle_get_arm32_thread_state(tstate, count, thread->machine.upcb);
  if (rn) return rn;
  break;
 }
 case 137:{
   struct arm_exception_state *state;
   struct arm_saved_state32 *saved_state;

   if (*count < ARM_EXCEPTION_STATE_COUNT)
    return (KERN_INVALID_ARGUMENT);
   if (thread_is_64bit_data(thread))
    return (KERN_INVALID_ARGUMENT);

   state = (struct arm_exception_state *) tstate;
   saved_state = saved_state32(thread->machine.upcb);

   state->exception = saved_state->exception;
   state->fsr = saved_state->esr;
   state->far = saved_state->far;

   *count = ARM_EXCEPTION_STATE_COUNT;
   break;
  }
 case 136:{
   struct arm_exception_state64 *state;
   struct arm_saved_state64 *saved_state;

   if (*count < ARM_EXCEPTION_STATE64_COUNT)
    return (KERN_INVALID_ARGUMENT);
   if (!thread_is_64bit_data(thread))
    return (KERN_INVALID_ARGUMENT);

   state = (struct arm_exception_state64 *) tstate;
   saved_state = saved_state64(thread->machine.upcb);

   state->exception = saved_state->exception;
   state->far = saved_state->far;
   state->esr = saved_state->esr;

   *count = ARM_EXCEPTION_STATE64_COUNT;
   break;
  }
 case 140:{
   arm_legacy_debug_state_t *state;
   arm_debug_state32_t *thread_state;

   if (*count < ARM_LEGACY_DEBUG_STATE_COUNT)
    return (KERN_INVALID_ARGUMENT);

   if (thread_is_64bit_data(thread))
    return (KERN_INVALID_ARGUMENT);

   state = (arm_legacy_debug_state_t *) tstate;
   thread_state = find_debug_state32(thread);

   if (thread_state == ((void*)0))
    bzero(state, sizeof(arm_legacy_debug_state_t));
   else
    bcopy(thread_state, state, sizeof(arm_legacy_debug_state_t));

   *count = ARM_LEGACY_DEBUG_STATE_COUNT;
   break;
  }
 case 139:{
   arm_debug_state32_t *state;
   arm_debug_state32_t *thread_state;

   if (*count < ARM_DEBUG_STATE32_COUNT)
    return (KERN_INVALID_ARGUMENT);

   if (thread_is_64bit_data(thread))
    return (KERN_INVALID_ARGUMENT);

   state = (arm_debug_state32_t *) tstate;
   thread_state = find_debug_state32(thread);

   if (thread_state == ((void*)0))
    bzero(state, sizeof(arm_debug_state32_t));
   else
    bcopy(thread_state, state, sizeof(arm_debug_state32_t));

   *count = ARM_DEBUG_STATE32_COUNT;
   break;
  }

 case 138:{
   arm_debug_state64_t *state;
   arm_debug_state64_t *thread_state;

   if (*count < ARM_DEBUG_STATE64_COUNT)
    return (KERN_INVALID_ARGUMENT);

   if (!thread_is_64bit_data(thread))
    return (KERN_INVALID_ARGUMENT);

   state = (arm_debug_state64_t *) tstate;
   thread_state = find_debug_state64(thread);

   if (thread_state == ((void*)0))
    bzero(state, sizeof(arm_debug_state64_t));
   else
    bcopy(thread_state, state, sizeof(arm_debug_state64_t));

   *count = ARM_DEBUG_STATE64_COUNT;
   break;
  }

 case 130:{
   struct arm_vfp_state *state;
   arm_neon_saved_state32_t *thread_state;
   unsigned int max;

   if (*count < ARM_VFP_STATE_COUNT) {
    if (*count < ARM_VFPV2_STATE_COUNT)
     return (KERN_INVALID_ARGUMENT);
    else
     *count = ARM_VFPV2_STATE_COUNT;
   }

   if (*count == ARM_VFPV2_STATE_COUNT)
    max = 32;
   else
    max = 64;

   state = (struct arm_vfp_state *) tstate;
   thread_state = neon_state32(thread->machine.uNeon);


   bcopy(thread_state, state, (max + 1)*sizeof(uint32_t));
   *count = (max + 1);
   break;
  }
 case 135:{
  arm_neon_state_t *state;
  arm_neon_saved_state32_t *thread_state;

  if (*count < ARM_NEON_STATE_COUNT)
   return (KERN_INVALID_ARGUMENT);

  if (thread_is_64bit_data(thread))
   return (KERN_INVALID_ARGUMENT);

  state = (arm_neon_state_t *)tstate;
  thread_state = neon_state32(thread->machine.uNeon);

  assert(sizeof(*thread_state) == sizeof(*state));
  bcopy(thread_state, state, sizeof(arm_neon_state_t));

  *count = ARM_NEON_STATE_COUNT;
  break;

  }

 case 134:{
  arm_neon_state64_t *state;
  arm_neon_saved_state64_t *thread_state;

  if (*count < ARM_NEON_STATE64_COUNT)
   return (KERN_INVALID_ARGUMENT);

  if (!thread_is_64bit_data(thread))
   return (KERN_INVALID_ARGUMENT);

  state = (arm_neon_state64_t *)tstate;
  thread_state = neon_state64(thread->machine.uNeon);


  assert(sizeof(*state) == sizeof(*thread_state));
  bcopy(thread_state, state, sizeof(arm_neon_state64_t));

  *count = ARM_NEON_STATE64_COUNT;
  break;

  }

 default:
  return (KERN_INVALID_ARGUMENT);
 }
 return (KERN_SUCCESS);
}
