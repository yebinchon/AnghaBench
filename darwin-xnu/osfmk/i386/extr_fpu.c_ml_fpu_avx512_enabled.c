
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ AVX512 ;
 scalar_t__ fpu_capability ;

boolean_t
ml_fpu_avx512_enabled(void) {
 return (fpu_capability == AVX512);
}
