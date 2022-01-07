
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;


 int MC_CL ;
 int m_cache (int ) ;
 int mcache_free (int ,int ) ;

void
m_mclfree(caddr_t p)
{
 mcache_free(m_cache(MC_CL), p);
}
