
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_test {int dummy; } ;


 int kasan_run_test (struct kasan_test*,int,int ) ;

void
__kasan_runtests(struct kasan_test *kext_tests, int numtests)
{
 int i;
 for (i = 0; i < numtests; i++) {
  kasan_run_test(kext_tests, i, 0);
 }
}
