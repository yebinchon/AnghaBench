
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ncached_max; } ;
typedef TYPE_1__ tcache_bin_info_t ;
struct TYPE_5__ {int nregs; } ;


 unsigned int NBINS ;
 unsigned int SMALL_MAXCLASS ;
 int TCACHE_NSLOTS_LARGE ;
 int TCACHE_NSLOTS_SMALL_MAX ;
 int TCACHE_NSLOTS_SMALL_MIN ;
 TYPE_3__* arena_bin_info ;
 scalar_t__ base_alloc (int) ;
 unsigned int large_maxclass ;
 int nhbins ;
 unsigned int opt_lg_tcache_max ;
 int size2index (unsigned int) ;
 scalar_t__ stack_nelms ;
 TYPE_1__* tcache_bin_info ;
 unsigned int tcache_maxclass ;

bool
tcache_boot(void)
{
 unsigned i;





 if (opt_lg_tcache_max < 0 || (1U << opt_lg_tcache_max) < SMALL_MAXCLASS)
  tcache_maxclass = SMALL_MAXCLASS;
 else if ((1U << opt_lg_tcache_max) > large_maxclass)
  tcache_maxclass = large_maxclass;
 else
  tcache_maxclass = (1U << opt_lg_tcache_max);

 nhbins = size2index(tcache_maxclass) + 1;


 tcache_bin_info = (tcache_bin_info_t *)base_alloc(nhbins *
     sizeof(tcache_bin_info_t));
 if (tcache_bin_info == ((void*)0))
  return (1);
 stack_nelms = 0;
 for (i = 0; i < NBINS; i++) {
  if ((arena_bin_info[i].nregs << 1) <= TCACHE_NSLOTS_SMALL_MIN) {
   tcache_bin_info[i].ncached_max =
       TCACHE_NSLOTS_SMALL_MIN;
  } else if ((arena_bin_info[i].nregs << 1) <=
      TCACHE_NSLOTS_SMALL_MAX) {
   tcache_bin_info[i].ncached_max =
       (arena_bin_info[i].nregs << 1);
  } else {
   tcache_bin_info[i].ncached_max =
       TCACHE_NSLOTS_SMALL_MAX;
  }
  stack_nelms += tcache_bin_info[i].ncached_max;
 }
 for (; i < nhbins; i++) {
  tcache_bin_info[i].ncached_max = TCACHE_NSLOTS_LARGE;
  stack_nelms += tcache_bin_info[i].ncached_max;
 }

 return (0);
}
