
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
typedef TYPE_1__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int m_flags; } ;


 int EINVAL ;
 int M_PKTHDR ;
 size_t m_scratch_get (TYPE_1__*,int **) ;

errno_t
mbuf_get_driver_scratch(mbuf_t m, u_int8_t **area, size_t *area_len)
{
 if (m == ((void*)0) || area == ((void*)0) || area_len == ((void*)0) ||
     !(m->m_flags & M_PKTHDR))
  return (EINVAL);

 *area_len = m_scratch_get(m, area);
 return (0);
}
