
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cassert (int ) ;
 void* chunk_dss_sbrk (int ) ;
 void* dss_base ;
 void* dss_max ;
 int dss_mtx ;
 void* dss_prev ;
 int have_dss ;
 scalar_t__ malloc_mutex_init (int *) ;

bool
chunk_dss_boot(void)
{

 cassert(have_dss);

 if (malloc_mutex_init(&dss_mtx))
  return (1);
 dss_base = chunk_dss_sbrk(0);
 dss_prev = dss_base;
 dss_max = dss_base;

 return (0);
}
