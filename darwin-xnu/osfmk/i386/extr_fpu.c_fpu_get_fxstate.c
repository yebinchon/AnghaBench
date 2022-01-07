
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fpu_fcw; } ;
typedef TYPE_1__ x86_float_state64_t ;
struct TYPE_8__ {int fpu_ymmh0; } ;
typedef TYPE_2__ x86_avx_state64_t ;
struct TYPE_9__ {int fpu_ymmh0; int fpu_zmmh0; int fpu_zmm16; int fpu_k0; } ;
typedef TYPE_3__ x86_avx512_state64_t ;
struct TYPE_10__ {int fpu_ymmh0; int fpu_zmmh0; int fpu_k0; } ;
typedef TYPE_4__ x86_avx512_state32_t ;
typedef scalar_t__ thread_t ;
typedef scalar_t__ thread_state_t ;
typedef scalar_t__ thread_flavor_t ;
struct x86_fx_thread_state {scalar_t__ fp_valid; } ;
struct x86_avx_thread_state {int x_YMM_Hi128; } ;
struct x86_avx512_thread_state {int x_YMM_Hi128; int x_ZMM_Hi256; int x_Hi16_ZMM; int x_Opmask; } ;
typedef TYPE_5__* pcb_t ;
typedef int kern_return_t ;
typedef int boolean_t ;
typedef int _STRUCT_ZMM_REG ;
typedef int _STRUCT_YMM_REG ;
typedef int _STRUCT_XMM_REG ;
typedef int _STRUCT_OPMASK_REG ;
struct TYPE_11__ {int lock; struct x86_fx_thread_state* ifps; } ;




 int DBG_AVX512_STATE (struct x86_avx512_thread_state*) ;
 int FALSE ;

 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ THREAD_NULL ;
 TYPE_5__* THREAD_TO_PCB (scalar_t__) ;

 int assert (int) ;
 int bcopy (char*,char*,int ) ;
 int bcopy_nochk (int ,int *,int) ;
 int clear_fpu () ;
 int clear_ts () ;
 scalar_t__ current_thread () ;
 int fp_save (scalar_t__) ;
 int * fp_state_size ;
 scalar_t__ fpu_capability ;
 int initial_fp_state ;
 int ml_set_interrupts_enabled (int ) ;
 int panic (char*) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int thread_xstate (scalar_t__) ;





kern_return_t
fpu_get_fxstate(
 thread_t thr_act,
 thread_state_t tstate,
 thread_flavor_t f)
{
 struct x86_fx_thread_state *ifps;
 x86_float_state64_t *state;
 kern_return_t ret = KERN_FAILURE;
 pcb_t pcb;

 if (fpu_capability == 132)
  return KERN_FAILURE;

 if ((f == 129 || f == 128) &&
     fpu_capability < 135)
  return KERN_FAILURE;


 if ((f == 131 || f == 130) &&
     thread_xstate(thr_act) != 134)
  return KERN_FAILURE;


 state = (x86_float_state64_t *)tstate;

 assert(thr_act != THREAD_NULL);
 pcb = THREAD_TO_PCB(thr_act);

 simple_lock(&pcb->lock);

 ifps = pcb->ifps;
 if (ifps == 0) {




  bcopy((char *)&initial_fp_state, (char *)&state->fpu_fcw,
      fp_state_size[133]);

  simple_unlock(&pcb->lock);

  return KERN_SUCCESS;
 }




 if (thr_act == current_thread()) {
  boolean_t intr;

  intr = ml_set_interrupts_enabled(FALSE);

  clear_ts();
  fp_save(thr_act);
  clear_fpu();

  (void)ml_set_interrupts_enabled(intr);
 }
 if (ifps->fp_valid) {
         bcopy((char *)ifps, (char *)&state->fpu_fcw, fp_state_size[133]);
  switch (thread_xstate(thr_act)) {
      case 132:
   panic("fpu_get_fxstate() UNDEFINED xstate");
   break;
      case 133:
   break;
      case 135: {
   struct x86_avx_thread_state *iavx = (void *) ifps;
   x86_avx_state64_t *xs = (x86_avx_state64_t *) state;
   if (f == 129) {
    bcopy_nochk(iavx->x_YMM_Hi128, &xs->fpu_ymmh0, 8 * sizeof(_STRUCT_XMM_REG));
   } else if (f == 128) {
    bcopy_nochk(iavx->x_YMM_Hi128, &xs->fpu_ymmh0, 16 * sizeof(_STRUCT_XMM_REG));
   }
   break;
      }

      case 134: {
   struct x86_avx512_thread_state *iavx = (void *) ifps;
   union {
    thread_state_t ts;
    x86_avx512_state32_t *s32;
    x86_avx512_state64_t *s64;
   } xs = { .ts = tstate };
   switch (f) {
       case 131:
    bcopy_nochk(iavx->x_Opmask, &xs.s32->fpu_k0, 8 * sizeof(_STRUCT_OPMASK_REG));
    bcopy_nochk(iavx->x_ZMM_Hi256, &xs.s32->fpu_zmmh0, 8 * sizeof(_STRUCT_YMM_REG));
    bcopy_nochk(iavx->x_YMM_Hi128, &xs.s32->fpu_ymmh0, 8 * sizeof(_STRUCT_XMM_REG));
    DBG_AVX512_STATE(iavx);
    break;
       case 129:
    bcopy_nochk(iavx->x_YMM_Hi128, &xs.s32->fpu_ymmh0, 8 * sizeof(_STRUCT_XMM_REG));
    break;
       case 130:
    bcopy_nochk(iavx->x_Opmask, &xs.s64->fpu_k0, 8 * sizeof(_STRUCT_OPMASK_REG));
    bcopy_nochk(iavx->x_Hi16_ZMM, &xs.s64->fpu_zmm16, 16 * sizeof(_STRUCT_ZMM_REG));
    bcopy_nochk(iavx->x_ZMM_Hi256, &xs.s64->fpu_zmmh0, 16 * sizeof(_STRUCT_YMM_REG));
    bcopy_nochk(iavx->x_YMM_Hi128, &xs.s64->fpu_ymmh0, 16 * sizeof(_STRUCT_XMM_REG));
    DBG_AVX512_STATE(iavx);
    break;
       case 128:
    bcopy_nochk(iavx->x_YMM_Hi128, &xs.s64->fpu_ymmh0, 16 * sizeof(_STRUCT_XMM_REG));
    break;
   }
   break;
      }

  }

  ret = KERN_SUCCESS;
 }
 simple_unlock(&pcb->lock);

 return ret;
}
