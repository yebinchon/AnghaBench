
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct kasan_test {int dummy; } ;


 int BUFSZ ;
 int TEST_FAULT (struct kasan_test*) ;
 int TEST_START (struct kasan_test*) ;
 int * kalloc (int ) ;
 int kfree (int *,int ) ;

__attribute__((used)) static int test_heap_double_free(struct kasan_test *t)
{
 TEST_START(t);

 uint8_t *x = kalloc(BUFSZ);
 if (!x) {
  return 1;
 }
 kfree(x, BUFSZ);

 TEST_FAULT(t);
 kfree(x, BUFSZ);

 return 0;
}
