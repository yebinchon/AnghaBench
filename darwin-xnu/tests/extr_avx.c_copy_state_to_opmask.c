
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int __fpu_k0; } ;
typedef TYPE_1__ X86_AVX512_STATE_T ;
typedef int OPMASK ;


 int KARRAY_MAX ;
 int bcopy (int *,int *,int) ;

__attribute__((used)) static void copy_state_to_opmask(X86_AVX512_STATE_T *sp, OPMASK *op) {
 OPMASK *k = (OPMASK *) &sp->__fpu_k0;
 for (int i = 0; i < KARRAY_MAX; i++) {
  bcopy(&k[i], &op[i], sizeof(*op));
 }
}
