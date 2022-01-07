
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pb_type; int pb_mbuf; } ;
typedef TYPE_1__ pbuf_t ;
typedef int mbuf_svc_class_t ;


 int MBUF_SC_BE ;
 scalar_t__ PBUF_TYPE_MBUF ;
 scalar_t__ PBUF_TYPE_MEMORY ;
 int VERIFY (int) ;
 int m_get_service_class (int ) ;

mbuf_svc_class_t
pbuf_get_service_class(const pbuf_t *pbuf)
{

 if (pbuf->pb_type == PBUF_TYPE_MBUF)
  return m_get_service_class(pbuf->pb_mbuf);

 VERIFY(pbuf->pb_type == PBUF_TYPE_MEMORY);

 return (MBUF_SC_BE);
}
