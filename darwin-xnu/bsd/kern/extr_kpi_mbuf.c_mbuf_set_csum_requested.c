
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef TYPE_2__* mbuf_t ;
typedef int mbuf_csum_request_flags_t ;
typedef int errno_t ;
struct TYPE_4__ {int csum_flags; int csum_data; } ;
struct TYPE_5__ {TYPE_1__ m_pkthdr; } ;


 int mbuf_valid_csum_request_flags ;

errno_t
mbuf_set_csum_requested(
 mbuf_t mbuf,
 mbuf_csum_request_flags_t request,
 u_int32_t value)
{
 request &= mbuf_valid_csum_request_flags;
 mbuf->m_pkthdr.csum_flags =
     (mbuf->m_pkthdr.csum_flags & 0xffff0000) | request;
 mbuf->m_pkthdr.csum_data = value;

 return (0);
}
