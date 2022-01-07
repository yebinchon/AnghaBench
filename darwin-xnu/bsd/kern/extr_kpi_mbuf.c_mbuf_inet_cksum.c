
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef int u_int16_t ;
typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
struct TYPE_5__ {scalar_t__ len; } ;
struct TYPE_6__ {TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int inet_cksum (TYPE_2__*,int,scalar_t__,scalar_t__) ;

errno_t
mbuf_inet_cksum(mbuf_t mbuf, int protocol, u_int32_t offset, u_int32_t length,
    u_int16_t *csum)
{
 if (mbuf == ((void*)0) || length == 0 || csum == ((void*)0) ||
     (u_int32_t)mbuf->m_pkthdr.len < (offset + length))
  return (EINVAL);

 *csum = inet_cksum(mbuf, protocol, offset, length);
 return (0);
}
