
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arena_ralloc_junk_large_orig (void*,size_t,size_t) ;
 int assert_zu_eq (size_t,int ,char*) ;
 int large_maxclass ;
 void* most_recently_trimmed ;
 int shrink_size (int ) ;

__attribute__((used)) static void
arena_ralloc_junk_large_intercept(void *ptr, size_t old_usize, size_t usize)
{

 arena_ralloc_junk_large_orig(ptr, old_usize, usize);
 assert_zu_eq(old_usize, large_maxclass, "Unexpected old_usize");
 assert_zu_eq(usize, shrink_size(large_maxclass), "Unexpected usize");
 most_recently_trimmed = ptr;
}
