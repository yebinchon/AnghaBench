
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
struct TYPE_4__ {struct TYPE_4__* m_nextpkt; } ;



void
mbuf_setnextpkt(mbuf_t mbuf, mbuf_t nextpkt)
{
 mbuf->m_nextpkt = nextpkt;
}
