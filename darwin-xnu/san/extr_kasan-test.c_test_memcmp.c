
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct kasan_test {int dummy; } ;


 scalar_t__ STACK_ARRAY_SZ ;
 int TEST_BARRIER () ;
 int TEST_FAULT (struct kasan_test*) ;
 int TEST_NOFAULT (struct kasan_test*) ;
 int TEST_START (struct kasan_test*) ;
 int * kalloc (scalar_t__) ;
 int memcmp (int *,int *,scalar_t__) ;

__attribute__((used)) static int test_memcmp(struct kasan_test *t)
{
 TEST_START(t);
 uint8_t *a1;
 uint8_t *a2;

 a1 = kalloc(STACK_ARRAY_SZ);
 if (!a1)
  return 1;
 a2 = kalloc(STACK_ARRAY_SZ+1);
 if (!a2)
  return 1;


 memcmp(a1, a2, STACK_ARRAY_SZ);
 memcmp(a1, a2+1, STACK_ARRAY_SZ);

 TEST_BARRIER();


 TEST_FAULT(t);
 memcmp(a1, a2, STACK_ARRAY_SZ+1);
 TEST_NOFAULT(t);

 return 0;
}
