
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct kasan_test {int dummy; } ;


 int STACK_ARRAY_SZ ;
 int TEST_BARRIER () ;
 int TEST_FAULT (struct kasan_test*) ;
 int TEST_NOFAULT (struct kasan_test*) ;
 int TEST_START (struct kasan_test*) ;

__attribute__((used)) static int test_stack_overflow(struct kasan_test *t)
{
 TEST_START(t);

 int i;
 volatile uint8_t a[STACK_ARRAY_SZ];

 for (i = 0; i < STACK_ARRAY_SZ; i++) {
  a[i] = i;
 }

 TEST_FAULT(t);
 a[i] = i;
 TEST_NOFAULT(t);

 TEST_BARRIER();

 return !(a[0] == 0);
}
