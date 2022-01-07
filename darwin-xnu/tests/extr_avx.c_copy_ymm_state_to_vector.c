
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct __darwin_xmm_reg {int dummy; } ;
struct TYPE_3__ {struct __darwin_xmm_reg __fpu_ymmh0; struct __darwin_xmm_reg __fpu_xmm0; } ;
typedef TYPE_1__ X86_AVX_STATE_T ;
typedef void VECTOR256 ;


 int YMM_MAX ;
 int bcopy (struct __darwin_xmm_reg*,void*,int) ;

__attribute__((used)) static void
copy_ymm_state_to_vector(X86_AVX_STATE_T *sp, VECTOR256 *vp) {
 int i;
 struct __darwin_xmm_reg *xmm = &sp->__fpu_xmm0;
 struct __darwin_xmm_reg *ymmh = &sp->__fpu_ymmh0;

 for (i = 0; i < YMM_MAX; i++ ) {
  bcopy(&xmm[i], &vp[i], sizeof(*xmm));
  bcopy(&ymmh[i], (void *) ((uint64_t)&vp[i] + sizeof(*ymmh)), sizeof(*ymmh));
 }
}
