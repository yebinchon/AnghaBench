
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;


 int MCR_NOSLEEP ;
 int MCR_TRYHARD ;
 int MC_CL ;
 int MSLEEPF (int) ;
 int m_cache (int ) ;
 int mcache_alloc (int ,int) ;

caddr_t
m_mclalloc(int wait)
{
 int mcflags = MSLEEPF(wait);


 if (mcflags & MCR_NOSLEEP)
  mcflags |= MCR_TRYHARD;

 return (mcache_alloc(m_cache(MC_CL), mcflags));
}
