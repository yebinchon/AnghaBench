
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_2__ {void* ext_buf; } ;
struct mbuf {scalar_t__ m_type; scalar_t__ m_flags; TYPE_1__ m_ext; } ;
struct ext_ref {int dummy; } ;


 int ASSERT (int) ;
 int MBUF_CL_INIT (struct mbuf*,void*,struct ext_ref*,int,int ) ;
 int MBUF_INIT (struct mbuf*,int,int) ;
 scalar_t__ MBUF_IS_COMPOSITE (struct mbuf*) ;
 int MCR_NOSLEEP ;
 int MCR_TRYHARD ;
 int MC_MBUF_CL ;
 int MEXT_FLAGS (struct mbuf*) ;
 int MSLEEPF (int) ;
 scalar_t__ MT_FREE ;
 scalar_t__ M_EXT ;
 int M_PKTHDR ;
 int VERIFY (int) ;
 int m_cache (int ) ;
 int m_freem (struct mbuf*) ;
 int * m_get_ext_free (struct mbuf*) ;
 struct ext_ref* m_get_rfa (struct mbuf*) ;
 scalar_t__ mac_init_mbuf (struct mbuf*,int) ;
 struct mbuf* mcache_alloc (int ,int) ;
 int mtype_stat_dec (scalar_t__) ;
 int mtype_stat_inc (int) ;

struct mbuf *
m_getcl(int wait, int type, int flags)
{
 struct mbuf *m;
 int mcflags = MSLEEPF(wait);
 int hdr = (flags & M_PKTHDR);


 if (mcflags & MCR_NOSLEEP)
  mcflags |= MCR_TRYHARD;

 m = mcache_alloc(m_cache(MC_MBUF_CL), mcflags);
 if (m != ((void*)0)) {
  u_int16_t flag;
  struct ext_ref *rfa;
  void *cl;

  VERIFY(m->m_type == MT_FREE && m->m_flags == M_EXT);
  cl = m->m_ext.ext_buf;
  rfa = m_get_rfa(m);

  ASSERT(cl != ((void*)0) && rfa != ((void*)0));
  VERIFY(MBUF_IS_COMPOSITE(m) && m_get_ext_free(m) == ((void*)0));

  flag = MEXT_FLAGS(m);

  MBUF_INIT(m, hdr, type);
  MBUF_CL_INIT(m, cl, rfa, 1, flag);

  mtype_stat_inc(type);
  mtype_stat_dec(MT_FREE);






 }
 return (m);
}
