
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cassert (int ) ;
 scalar_t__ dss_base ;
 scalar_t__ dss_max ;
 int dss_mtx ;
 int have_dss ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;

bool
chunk_in_dss(void *chunk)
{
 bool ret;

 cassert(have_dss);

 malloc_mutex_lock(&dss_mtx);
 if ((uintptr_t)chunk >= (uintptr_t)dss_base
     && (uintptr_t)chunk < (uintptr_t)dss_max)
  ret = 1;
 else
  ret = 0;
 malloc_mutex_unlock(&dss_mtx);

 return (ret);
}
