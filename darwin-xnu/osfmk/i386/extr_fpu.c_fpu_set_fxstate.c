
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int fpu_fcw; int fpu_mxcsr; } ;
typedef TYPE_5__ x86_float_state64_t ;
struct TYPE_16__ {int fpu_ymmh0; } ;
typedef TYPE_6__ x86_avx_state64_t ;
struct TYPE_17__ {int fpu_ymmh0; int fpu_zmmh0; int fpu_zmm16; int fpu_k0; } ;
typedef TYPE_7__ x86_avx512_state64_t ;
struct TYPE_18__ {int fpu_ymmh0; int fpu_zmmh0; int fpu_k0; } ;
typedef TYPE_8__ x86_avx512_state32_t ;
typedef scalar_t__ thread_t ;
typedef scalar_t__ thread_state_t ;
typedef scalar_t__ thread_flavor_t ;
struct x86_fx_thread_state {scalar_t__ fp_valid; int fp_save_layout; } ;
struct TYPE_12__ {int xstate_bv; int xcomp_bv; int * xhrsvd; } ;
struct TYPE_11__ {void* fp_save_layout; } ;
struct x86_avx_thread_state {TYPE_2__ _xh; int x_YMM_Hi128; TYPE_1__ fp; } ;
struct TYPE_14__ {int xcomp_bv; int xstate_bv; int * xhrsvd; } ;
struct TYPE_13__ {void* fp_save_layout; } ;
struct x86_avx512_thread_state {int x_YMM_Hi128; int x_ZMM_Hi256; int x_Hi16_ZMM; int x_Opmask; TYPE_4__ _xh; TYPE_3__ fp; } ;
typedef TYPE_9__* pcb_t ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;
typedef int _STRUCT_ZMM_REG ;
typedef int _STRUCT_YMM_REG ;
typedef int _STRUCT_XMM_REG ;
typedef int _STRUCT_OPMASK_REG ;
struct TYPE_19__ {int xstate; int lock; struct x86_fx_thread_state* ifps; } ;




 int AVX512_XMASK ;
 int AVX_XMASK ;
 int DBG_AVX512_STATE (struct x86_avx512_thread_state*) ;
 scalar_t__ FALSE ;

 int FXSAVE32 ;
 int FXSAVE64 ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ THREAD_NULL ;
 TYPE_9__* THREAD_TO_PCB (scalar_t__) ;
 scalar_t__ TRUE ;

 int XFEM_SSE ;
 int XFEM_X87 ;
 void* XSAVE32 ;
 void* XSAVE64 ;
 int assert (int) ;
 int bcopy (char*,char*,int ) ;
 int bcopy_nochk (int *,int ,int) ;
 int bzero (int *,int) ;
 scalar_t__ current_thread () ;
 struct x86_fx_thread_state* fp_state_alloc (int) ;
 int fp_state_free (struct x86_fx_thread_state*,int) ;
 int * fp_state_size ;
 scalar_t__ fpu_capability ;
 int fpu_thread_promote_avx512 (scalar_t__) ;
 scalar_t__ ml_set_interrupts_enabled (scalar_t__) ;
 int mxcsr_capability_mask ;
 int panic (char*,...) ;
 int set_ts () ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int thread_is_64bit_addr (scalar_t__) ;
 int thread_xstate (scalar_t__) ;





kern_return_t
fpu_set_fxstate(
 thread_t thr_act,
 thread_state_t tstate,
 thread_flavor_t f)
{
 struct x86_fx_thread_state *ifps;
 struct x86_fx_thread_state *new_ifps;
 x86_float_state64_t *state;
 pcb_t pcb;
 boolean_t old_valid, fresh_state = FALSE;

 if (fpu_capability == 132)
  return KERN_FAILURE;

 if ((f == 129 || f == 128) &&
     fpu_capability < 135)
  return KERN_FAILURE;


 if ((f == 131 || f == 130) &&
     thread_xstate(thr_act) == 135)
  if (!fpu_thread_promote_avx512(thr_act))
   return KERN_FAILURE;


 state = (x86_float_state64_t *)tstate;

 assert(thr_act != THREAD_NULL);
 pcb = THREAD_TO_PCB(thr_act);

 if (state == ((void*)0)) {




  simple_lock(&pcb->lock);

  ifps = pcb->ifps;
  pcb->ifps = 0;

  simple_unlock(&pcb->lock);

  if (ifps != 0) {
   fp_state_free(ifps, thread_xstate(thr_act));
  }
 } else {



  new_ifps = 0;
  Retry:
  simple_lock(&pcb->lock);

  ifps = pcb->ifps;
  if (ifps == 0) {
   if (new_ifps == 0) {
    simple_unlock(&pcb->lock);
    new_ifps = fp_state_alloc(thread_xstate(thr_act));
    goto Retry;
   }
   ifps = new_ifps;
   new_ifps = 0;
   pcb->ifps = ifps;
   pcb->xstate = thread_xstate(thr_act);
   fresh_state = TRUE;
  }





  old_valid = ifps->fp_valid;
  state->fpu_mxcsr &= mxcsr_capability_mask;

  bcopy((char *)&state->fpu_fcw, (char *)ifps, fp_state_size[133]);

  switch (thread_xstate(thr_act)) {
      case 132:
   panic("fpu_set_fxstate() UNDEFINED xstate");
   break;
      case 133:
   ifps->fp_save_layout = thread_is_64bit_addr(thr_act) ? FXSAVE64 : FXSAVE32;
   break;
      case 135: {
   struct x86_avx_thread_state *iavx = (void *) ifps;
   x86_avx_state64_t *xs = (x86_avx_state64_t *) state;

   iavx->fp.fp_save_layout = thread_is_64bit_addr(thr_act) ? XSAVE64 : XSAVE32;


   bzero(&iavx->_xh.xhrsvd[0], sizeof(iavx->_xh.xhrsvd));
   iavx->_xh.xstate_bv = AVX_XMASK;
   iavx->_xh.xcomp_bv = 0;

   if (f == 129) {
    bcopy_nochk(&xs->fpu_ymmh0, iavx->x_YMM_Hi128, 8 * sizeof(_STRUCT_XMM_REG));
   } else if (f == 128) {
    bcopy_nochk(&xs->fpu_ymmh0, iavx->x_YMM_Hi128, 16 * sizeof(_STRUCT_XMM_REG));
   } else {
    iavx->_xh.xstate_bv = (XFEM_SSE | XFEM_X87);
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

   iavx->fp.fp_save_layout = thread_is_64bit_addr(thr_act) ? XSAVE64 : XSAVE32;


   bzero(&iavx->_xh.xhrsvd[0], sizeof(iavx->_xh.xhrsvd));
   iavx->_xh.xstate_bv = AVX512_XMASK;
   iavx->_xh.xcomp_bv = 0;

   switch (f) {
       case 131:
    bcopy_nochk(&xs.s32->fpu_k0, iavx->x_Opmask, 8 * sizeof(_STRUCT_OPMASK_REG));
    bcopy_nochk(&xs.s32->fpu_zmmh0, iavx->x_ZMM_Hi256, 8 * sizeof(_STRUCT_YMM_REG));
    bcopy_nochk(&xs.s32->fpu_ymmh0, iavx->x_YMM_Hi128, 8 * sizeof(_STRUCT_XMM_REG));
    DBG_AVX512_STATE(iavx);
    break;
       case 129:
    bcopy_nochk(&xs.s32->fpu_ymmh0, iavx->x_YMM_Hi128, 8 * sizeof(_STRUCT_XMM_REG));
    break;
       case 130:
    bcopy_nochk(&xs.s64->fpu_k0, iavx->x_Opmask, 8 * sizeof(_STRUCT_OPMASK_REG));
    bcopy_nochk(&xs.s64->fpu_zmm16, iavx->x_Hi16_ZMM, 16 * sizeof(_STRUCT_ZMM_REG));
    bcopy_nochk(&xs.s64->fpu_zmmh0, iavx->x_ZMM_Hi256, 16 * sizeof(_STRUCT_YMM_REG));
    bcopy_nochk(&xs.s64->fpu_ymmh0, iavx->x_YMM_Hi128, 16 * sizeof(_STRUCT_XMM_REG));
    DBG_AVX512_STATE(iavx);
    break;
       case 128:
    bcopy_nochk(&xs.s64->fpu_ymmh0, iavx->x_YMM_Hi128, 16 * sizeof(_STRUCT_XMM_REG));
    break;
   }
   break;
      }

  }

  ifps->fp_valid = old_valid;

  if (old_valid == FALSE) {
   boolean_t istate = ml_set_interrupts_enabled(FALSE);
   ifps->fp_valid = TRUE;

   if (thr_act == current_thread())
    set_ts();

   ml_set_interrupts_enabled(istate);
  }

  simple_unlock(&pcb->lock);

  if (new_ifps != 0)
   fp_state_free(new_ifps, thread_xstate(thr_act));
 }
 return KERN_SUCCESS;
}
