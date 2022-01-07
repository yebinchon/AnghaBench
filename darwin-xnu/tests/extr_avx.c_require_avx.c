
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_SKIP (char*) ;
 int _get_cpu_capabilities () ;
 int kHasAVX1_0 ;

void
require_avx(void) {
 if((_get_cpu_capabilities() & kHasAVX1_0) != kHasAVX1_0) {
  T_SKIP("AVX not supported on this system");
 }
}
