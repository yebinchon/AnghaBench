
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int MBUF_INIT (struct mbuf*,int,short) ;
 int MCR_NOSLEEP ;
 int MCR_TRYHARD ;
 int MC_MBUF ;
 int MSLEEPF (int) ;
 int MT_FREE ;
 int m_cache (int ) ;
 int m_free (struct mbuf*) ;
 scalar_t__ mac_init_mbuf (struct mbuf*,int) ;
 struct mbuf* mcache_alloc (int ,int) ;
 int mtype_stat_dec (int ) ;
 int mtype_stat_inc (short) ;

__attribute__((used)) static inline struct mbuf *
m_get_common(int wait, short type, int hdr)
{
 struct mbuf *m;
 int mcflags = MSLEEPF(wait);


 if (mcflags & MCR_NOSLEEP)
  mcflags |= MCR_TRYHARD;

 m = mcache_alloc(m_cache(MC_MBUF), mcflags);
 if (m != ((void*)0)) {
  MBUF_INIT(m, hdr, type);
  mtype_stat_inc(type);
  mtype_stat_dec(MT_FREE);






 }
 return (m);
}
