
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {scalar_t__ vlan_tag; int csum_flags; } ;
struct TYPE_5__ {TYPE_1__ m_pkthdr; } ;


 int CSUM_VLAN_TAG_VALID ;

errno_t
mbuf_clear_vlan_tag(
 mbuf_t mbuf)
{
 mbuf->m_pkthdr.csum_flags &= ~CSUM_VLAN_TAG_VALID;
 mbuf->m_pkthdr.vlan_tag = 0;

 return (0);
}
