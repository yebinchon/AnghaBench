
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
typedef int mbuf_traffic_class_t ;


 int MBUF_SC2TC (int ) ;
 int m_get_service_class (struct mbuf*) ;

mbuf_traffic_class_t
m_get_traffic_class(struct mbuf *m)
{
 return (MBUF_SC2TC(m_get_service_class(m)));
}
