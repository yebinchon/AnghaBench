
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_t ;
typedef int errno_t ;


 int EBUSY ;
 int m_ext_paired_activate (int ) ;
 scalar_t__ mbuf_ring_cluster_is_active (int ) ;

errno_t
mbuf_ring_cluster_activate(mbuf_t mbuf)
{
 if (mbuf_ring_cluster_is_active(mbuf))
  return (EBUSY);

 m_ext_paired_activate(mbuf);
 return (0);
}
