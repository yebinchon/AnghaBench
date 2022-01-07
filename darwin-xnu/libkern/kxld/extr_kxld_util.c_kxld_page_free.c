
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bytes_freed ;
 int kxld_page_free_untracked (void*,size_t) ;
 int num_frees ;
 scalar_t__ round_page (size_t) ;

void
kxld_page_free(void *ptr, size_t size)
{




    kxld_page_free_untracked(ptr, size);
}
