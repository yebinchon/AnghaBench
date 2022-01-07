
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mbuf_class_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ MC_16KCL ;
 scalar_t__ MC_BIGCL ;
 scalar_t__ MC_CL ;
 scalar_t__ MC_MBUF_16KCL ;
 scalar_t__ MC_MBUF_BIGCL ;
 scalar_t__ MC_MBUF_CL ;
 int m_cache (scalar_t__) ;
 int mcache_waiter_dec (int ) ;

__attribute__((used)) static void
mbuf_waiter_dec(mbuf_class_t class, boolean_t comp)
{
 mcache_waiter_dec(m_cache(class));
 if (comp) {
  if (class == MC_CL) {
   mcache_waiter_dec(m_cache(MC_MBUF_CL));
  } else if (class == MC_BIGCL) {
   mcache_waiter_dec(m_cache(MC_MBUF_BIGCL));
  } else if (class == MC_16KCL) {
   mcache_waiter_dec(m_cache(MC_MBUF_16KCL));
  } else {
   mcache_waiter_dec(m_cache(MC_MBUF_CL));
   mcache_waiter_dec(m_cache(MC_MBUF_BIGCL));
  }
 }
}
