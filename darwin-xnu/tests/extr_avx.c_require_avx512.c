
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_SKIP (char*) ;
 int _get_cpu_capabilities () ;
 int kHasAVX512F ;

void
require_avx512(void) {
 if((_get_cpu_capabilities() & kHasAVX512F) != kHasAVX512F) {
  T_SKIP("AVX-512 not supported on this system");
 }
}
