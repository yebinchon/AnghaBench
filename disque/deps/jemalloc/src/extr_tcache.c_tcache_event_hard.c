
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_10__ {size_t next_gc_bin; scalar_t__ ev_cnt; TYPE_2__* tbins; } ;
typedef TYPE_1__ tcache_t ;
struct TYPE_11__ {int low_water; int ncached; int lg_fill_div; } ;
typedef TYPE_2__ tcache_bin_t ;
struct TYPE_12__ {int ncached_max; } ;
typedef TYPE_3__ tcache_bin_info_t ;
typedef size_t szind_t ;


 size_t NBINS ;
 scalar_t__ nhbins ;
 int tcache_bin_flush_large (int *,TYPE_2__*,size_t,int,TYPE_1__*) ;
 int tcache_bin_flush_small (int *,TYPE_1__*,TYPE_2__*,size_t,int) ;
 TYPE_3__* tcache_bin_info ;

void
tcache_event_hard(tsd_t *tsd, tcache_t *tcache)
{
 szind_t binind = tcache->next_gc_bin;
 tcache_bin_t *tbin = &tcache->tbins[binind];
 tcache_bin_info_t *tbin_info = &tcache_bin_info[binind];

 if (tbin->low_water > 0) {



  if (binind < NBINS) {
   tcache_bin_flush_small(tsd, tcache, tbin, binind,
       tbin->ncached - tbin->low_water + (tbin->low_water
       >> 2));
  } else {
   tcache_bin_flush_large(tsd, tbin, binind, tbin->ncached
       - tbin->low_water + (tbin->low_water >> 2), tcache);
  }




  if ((tbin_info->ncached_max >> (tbin->lg_fill_div+1)) >= 1)
   tbin->lg_fill_div++;
 } else if (tbin->low_water < 0) {




  if (tbin->lg_fill_div > 1)
   tbin->lg_fill_div--;
 }
 tbin->low_water = tbin->ncached;

 tcache->next_gc_bin++;
 if (tcache->next_gc_bin == nhbins)
  tcache->next_gc_bin = 0;
 tcache->ev_cnt = 0;
}
