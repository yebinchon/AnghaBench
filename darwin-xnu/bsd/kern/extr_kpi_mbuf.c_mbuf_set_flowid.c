
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int16_t ;
typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
struct TYPE_5__ {int drv_flowid; } ;
struct TYPE_6__ {int m_flags; TYPE_1__ m_pkthdr; } ;


 int EINVAL ;
 int M_PKTHDR ;
 int driver_mtag_init (TYPE_2__*) ;

errno_t
mbuf_set_flowid(mbuf_t m, u_int16_t flowid)
{
 if (m == ((void*)0) || !(m->m_flags & M_PKTHDR))
  return (EINVAL);

 driver_mtag_init(m);

 m->m_pkthdr.drv_flowid = flowid;

 return (0);
}
