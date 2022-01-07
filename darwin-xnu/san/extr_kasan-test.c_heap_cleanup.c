
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_test {int * data; int datasz; } ;


 int kfree (int *,int ) ;

__attribute__((used)) static void heap_cleanup(struct kasan_test *t)
{
 if (t->data) {
  kfree(t->data, t->datasz);
  t->data = ((void*)0);
 }
}
