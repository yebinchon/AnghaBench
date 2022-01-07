
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t AVX512 ;
 int IS_VALID_XSTATE (size_t) ;
 int TRUE ;
 int Z_ALIGNMENT_REQUIRED ;
 int configure_mxcsr_capability_mask (int *) ;
 int* fp_state_size ;
 size_t fpu_capability ;
 size_t fpu_default ;
 int * ifps_zone ;
 int initial_fp_state ;
 int panic (char*,size_t) ;
 int thread_max ;
 int zinit (int,int,int,char*) ;
 int zone_change (int ,int ,int ) ;

void
fpu_module_init(void)
{
 if (!IS_VALID_XSTATE(fpu_default))
  panic("fpu_module_init: invalid extended state %u\n",
   fpu_default);





 ifps_zone[fpu_default] = zinit(fp_state_size[fpu_default],
           thread_max * fp_state_size[fpu_default],
           64 * fp_state_size[fpu_default],
           "x86 fpsave state");





 zone_change(ifps_zone[fpu_default], Z_ALIGNMENT_REQUIRED, TRUE);






 if (fpu_capability == AVX512) {
  ifps_zone[AVX512] = zinit(fp_state_size[AVX512],
       thread_max * fp_state_size[AVX512],
       32 * fp_state_size[AVX512],
       "x86 avx512 save state");
  zone_change(ifps_zone[AVX512], Z_ALIGNMENT_REQUIRED, TRUE);
 }



 configure_mxcsr_capability_mask(&initial_fp_state);
}
