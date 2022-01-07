
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int mbuf_tso_request_flags_t ;
typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int tso_segsz; int csum_flags; } ;
struct TYPE_5__ {int m_flags; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int M_PKTHDR ;
 int mbuf_valid_tso_request_flags ;

errno_t
mbuf_get_tso_requested(
 mbuf_t mbuf,
 mbuf_tso_request_flags_t *request,
 u_int32_t *value)
{
 if (mbuf == ((void*)0) || (mbuf->m_flags & M_PKTHDR) == 0 ||
   request == ((void*)0) || value == ((void*)0))
  return (EINVAL);

 *request = mbuf->m_pkthdr.csum_flags;
 *request &= mbuf_valid_tso_request_flags;
 if (*request && value != ((void*)0))
  *value = mbuf->m_pkthdr.tso_segsz;

 return (0);
}
