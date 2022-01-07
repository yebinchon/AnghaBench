
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arena_dalloc_junk_large_orig (void*,size_t) ;
 int assert_c_eq (char,int,char*,size_t,size_t) ;
 int saw_junking ;
 void* watch_for_junking ;

__attribute__((used)) static void
arena_dalloc_junk_large_intercept(void *ptr, size_t usize)
{
 size_t i;

 arena_dalloc_junk_large_orig(ptr, usize);
 for (i = 0; i < usize; i++) {
  assert_c_eq(((char *)ptr)[i], 0x5a,
      "Missing junk fill for byte %zu/%zu of deallocated region",
      i, usize);
 }
 if (ptr == watch_for_junking)
  saw_junking = 1;
}
