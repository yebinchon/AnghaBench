
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dss_prec_t ;


 int dss_mtx ;
 scalar_t__ dss_prec_default ;
 scalar_t__ dss_prec_disabled ;
 int have_dss ;
 int malloc_mutex_lock (int *) ;
 int malloc_mutex_unlock (int *) ;

bool
chunk_dss_prec_set(dss_prec_t dss_prec)
{

 if (!have_dss)
  return (dss_prec != dss_prec_disabled);
 malloc_mutex_lock(&dss_mtx);
 dss_prec_default = dss_prec;
 malloc_mutex_unlock(&dss_mtx);
 return (0);
}
