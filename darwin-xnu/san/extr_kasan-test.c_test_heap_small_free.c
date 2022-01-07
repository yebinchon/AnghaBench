
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct kasan_test {scalar_t__ datasz; int * data; } ;


 scalar_t__ BUFSZ ;
 int TEST_FAULT (struct kasan_test*) ;
 int TEST_START (struct kasan_test*) ;
 int * kalloc (scalar_t__) ;
 int kfree (int *,scalar_t__) ;

__attribute__((used)) static int test_heap_small_free(struct kasan_test *t)
{
 TEST_START(t);

 uint8_t *x = kalloc(BUFSZ);
 if (!x) {
  return 1;
 }
 t->datasz = BUFSZ;
 t->data = x;

 TEST_FAULT(t);
 kfree(x, BUFSZ-2);
 t->data = ((void*)0);
 t->datasz = 0;

 return 0;
}
