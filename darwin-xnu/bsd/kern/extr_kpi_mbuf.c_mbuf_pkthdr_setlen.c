
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
struct TYPE_4__ {size_t len; } ;
struct TYPE_5__ {TYPE_1__ m_pkthdr; } ;



void
mbuf_pkthdr_setlen(mbuf_t mbuf, size_t len)
{
 mbuf->m_pkthdr.len = len;
}
