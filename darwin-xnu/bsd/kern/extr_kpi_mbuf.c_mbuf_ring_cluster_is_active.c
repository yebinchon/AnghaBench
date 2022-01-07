
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_t ;


 int m_ext_paired_is_active (int ) ;

int
mbuf_ring_cluster_is_active(mbuf_t mbuf)
{
 return (m_ext_paired_is_active(mbuf));
}
