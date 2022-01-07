
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
struct TYPE_3__ {size_t m_len; } ;



void
mbuf_setlen(mbuf_t mbuf, size_t len)
{
 mbuf->m_len = len;
}
