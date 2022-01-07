
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int16_t ;
typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int csum_flags; int vlan_tag; } ;
struct TYPE_5__ {TYPE_1__ m_pkthdr; } ;


 int CSUM_VLAN_TAG_VALID ;
 int ENXIO ;

errno_t
mbuf_get_vlan_tag(
 mbuf_t mbuf,
 u_int16_t *vlan)
{
 if ((mbuf->m_pkthdr.csum_flags & CSUM_VLAN_TAG_VALID) == 0)
  return (ENXIO);

 *vlan = mbuf->m_pkthdr.vlan_tag;

 return (0);
}
