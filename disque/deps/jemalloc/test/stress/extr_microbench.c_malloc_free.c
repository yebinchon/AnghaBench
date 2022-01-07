
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;
 void* malloc (int) ;
 int test_fail (char*) ;

__attribute__((used)) static void
malloc_free(void)
{

 void *p = malloc(1);
 if (p == ((void*)0)) {
  test_fail("Unexpected malloc() failure");
  return;
 }
 free(p);
}
