
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_class_t ;
typedef int boolean_t ;


 int MCR_COMP ;







 int VERIFY (int ) ;
 int m_cache (int) ;
 int mcache_bkt_isempty (int ) ;

__attribute__((used)) static boolean_t
mbuf_cached_above(mbuf_class_t class, int wait)
{
 switch (class) {
 case 131:
  if (wait & MCR_COMP)
   return (!mcache_bkt_isempty(m_cache(128)) ||
       !mcache_bkt_isempty(m_cache(129)));
  break;

 case 132:
  if (wait & MCR_COMP)
   return (!mcache_bkt_isempty(m_cache(128)));
  break;

 case 133:
  if (wait & MCR_COMP)
   return (!mcache_bkt_isempty(m_cache(129)));
  break;

 case 134:
  if (wait & MCR_COMP)
   return (!mcache_bkt_isempty(m_cache(130)));
  break;

 case 128:
 case 129:
 case 130:
  break;

 default:
  VERIFY(0);

 }

 return (!mcache_bkt_isempty(m_cache(class)));
}
