
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ext_buf; } ;
struct mbuf {TYPE_1__ m_ext; } ;
struct ext_ref {int dummy; } ;


 int MBUF_CL_INIT (struct mbuf*,int *,struct ext_ref*,int,int ) ;
 int MSLEEPF (int) ;
 int * m_mclalloc (int) ;
 struct ext_ref* mcache_alloc (int ,int ) ;
 int mcache_free (int ,struct ext_ref*) ;
 int ref_cache ;

struct mbuf *
m_mclget(struct mbuf *m, int wait)
{
 struct ext_ref *rfa;

 if ((rfa = mcache_alloc(ref_cache, MSLEEPF(wait))) == ((void*)0))
  return (m);

 m->m_ext.ext_buf = m_mclalloc(wait);
 if (m->m_ext.ext_buf != ((void*)0)) {
  MBUF_CL_INIT(m, m->m_ext.ext_buf, rfa, 1, 0);
 } else {
  mcache_free(ref_cache, rfa);
 }
 return (m);
}
