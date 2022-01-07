
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int fx_MXCSR_MASK; int fp_valid; int fp_save_layout; TYPE_4__** fx_XMM_reg; } ;
struct TYPE_11__ {TYPE_4__* x_Opmask; TYPE_4__* x_Hi16_ZMM; TYPE_4__* x_ZMM_Hi256; } ;
struct TYPE_10__ {TYPE_4__* x_YMM_Hi128; } ;
struct TYPE_13__ {TYPE_3__ fx; TYPE_2__ avx512; TYPE_1__ avx; } ;
typedef TYPE_4__ x86_ext_thread_state_t ;
struct x86_fx_thread_state {int dummy; } ;


 int ALIGNED (TYPE_4__*,int) ;
 size_t AVX ;
 size_t AVX512 ;
 int FALSE ;
 int FP_UNUSED ;
 int FXSAVE32 ;
 int TRUE ;
 int XSAVE32 ;
 int assert (int ) ;
 int bzero (TYPE_4__*,int) ;
 int default_avx512_state ;
 int default_avx_state ;
 int default_fx_state ;
 int fpinit () ;
 scalar_t__ fpu_YMM_capable ;
 scalar_t__ fpu_ZMM_capable ;
 int fpu_load_registers (TYPE_4__*) ;
 int fpu_store_registers (TYPE_4__*,int ) ;
 int fxsave64 (struct x86_fx_thread_state*) ;
 int mxcsr_capability_mask ;
 int set_ts () ;
 int xsave64 (struct x86_fx_thread_state*,int ) ;
 int * xstate_xmask ;

__attribute__((used)) static void
configure_mxcsr_capability_mask(x86_ext_thread_state_t *fps)
{

 assert(ALIGNED(fps, 64));

 bzero(fps, sizeof(*fps));

 fpinit();
 fpu_store_registers(fps, FALSE);

 mxcsr_capability_mask = fps->fx.fx_MXCSR_MASK;


 if (mxcsr_capability_mask == 0)
  mxcsr_capability_mask = 0xffbf;


 bzero(&fps->fx.fx_XMM_reg[0][0], sizeof(fps->fx.fx_XMM_reg));
 bzero(fps->avx.x_YMM_Hi128, sizeof(fps->avx.x_YMM_Hi128));

 if (fpu_ZMM_capable) {
  bzero(fps->avx512.x_ZMM_Hi256, sizeof(fps->avx512.x_ZMM_Hi256));
  bzero(fps->avx512.x_Hi16_ZMM, sizeof(fps->avx512.x_Hi16_ZMM));
  bzero(fps->avx512.x_Opmask, sizeof(fps->avx512.x_Opmask));
 }


 fps->fx.fp_valid = TRUE;
 fps->fx.fp_save_layout = fpu_YMM_capable ? XSAVE32: FXSAVE32;
 fpu_load_registers(fps);

 if (fpu_ZMM_capable) {
  xsave64((struct x86_fx_thread_state *)&default_avx512_state, xstate_xmask[AVX512]);
 }
 if (fpu_YMM_capable) {
  xsave64((struct x86_fx_thread_state *)&default_avx_state, xstate_xmask[AVX]);
 } else {
  fxsave64((struct x86_fx_thread_state *)&default_fx_state);
 }


 fps->fx.fp_valid = 0xFFFFFFFF;
 fps->fx.fp_save_layout = FP_UNUSED;


 set_ts();
}
