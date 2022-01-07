
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ chunk_in_dss (void*) ;
 scalar_t__ config_fill ;
 int config_munmap ;
 scalar_t__ have_dss ;
 int memset (void*,int,size_t) ;
 int opt_junk_free ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void
huge_dalloc_junk(void *ptr, size_t usize)
{

 if (config_fill && have_dss && unlikely(opt_junk_free)) {




  if (!config_munmap || (have_dss && chunk_in_dss(ptr)))
   memset(ptr, 0x5a, usize);
 }
}
