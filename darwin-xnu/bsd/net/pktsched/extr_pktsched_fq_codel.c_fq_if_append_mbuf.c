
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
struct TYPE_2__ {struct TYPE_2__* m_nextpkt; } ;



__attribute__((used)) static void
fq_if_append_mbuf(void *pkt, void *next_pkt)
{
 ((mbuf_t)pkt)->m_nextpkt = (mbuf_t)next_pkt;
}
