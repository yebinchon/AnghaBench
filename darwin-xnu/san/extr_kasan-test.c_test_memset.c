
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
 int memset (int *,float,int) ;

__attribute__((used)) static int test_memset(struct kasan_test *t)
{
 TEST_START(t);
 uint8_t a1[STACK_ARRAY_SZ];


 memset(a1, 'e', STACK_ARRAY_SZ);

 TEST_BARRIER();


 TEST_FAULT(t);
 memset(a1, 'f', STACK_ARRAY_SZ+1);
 TEST_NOFAULT(t);

 return 0;
}
