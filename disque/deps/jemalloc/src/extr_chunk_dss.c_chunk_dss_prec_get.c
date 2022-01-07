
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dss_prec_t ;


 int dss_mtx ;
 int dss_prec_default ;
 int dss_prec_disabled ;
 int have_dss ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;

dss_prec_t
chunk_dss_prec_get(void)
{
 dss_prec_t ret;

 if (!have_dss)
  return (dss_prec_disabled);
 malloc_mutex_lock(&dss_mtx);
 ret = dss_prec_default;
 malloc_mutex_unlock(&dss_mtx);
 return (ret);
}
