
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
 int __nosan_memset (int*,int ,int) ;

__attribute__((used)) static int test_stack_underflow(struct kasan_test *t)
{
 TEST_START(t);

 long idx;
 uint8_t a[STACK_ARRAY_SZ];

 __nosan_memset(a, 0, STACK_ARRAY_SZ);



 __asm__ __volatile__("movq $-1, %0" : "=r"(idx) :: "memory");




 TEST_FAULT(t);
 a[idx] = 0xbd;
 TEST_NOFAULT(t);

 TEST_BARRIER();
 return (a[0] == 0);
}
