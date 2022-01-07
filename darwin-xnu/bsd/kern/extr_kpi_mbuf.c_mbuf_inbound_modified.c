
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
struct TYPE_4__ {scalar_t__ csum_flags; } ;
struct TYPE_5__ {TYPE_1__ m_pkthdr; } ;



void
mbuf_inbound_modified(mbuf_t mbuf)
{

 mbuf->m_pkthdr.csum_flags = 0;
}
