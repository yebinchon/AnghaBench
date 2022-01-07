
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mbuf {int dummy; } ;
typedef int mbuf_traffic_class_t ;


 int MBUF_TC2SCVAL (int ) ;
 int m_service_class_from_val (int ) ;
 int m_set_service_class (struct mbuf*,int ) ;

int
m_set_traffic_class(struct mbuf *m, mbuf_traffic_class_t tc)
{
 u_int32_t val = MBUF_TC2SCVAL(tc);

 return (m_set_service_class(m, m_service_class_from_val(val)));
}
