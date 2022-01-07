
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
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int test_memcpy(struct kasan_test *t)
{
 TEST_START(t);
 uint8_t a1[STACK_ARRAY_SZ];
 uint8_t a2[STACK_ARRAY_SZ];


 memcpy(a1, a2, STACK_ARRAY_SZ);

 TEST_BARRIER();


 TEST_FAULT(t);
 memcpy(a2, a1, STACK_ARRAY_SZ+1);
 TEST_NOFAULT(t);

 return 0;
}
