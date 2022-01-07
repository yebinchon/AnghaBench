
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
struct TYPE_4__ {size_t len; } ;
struct TYPE_5__ {TYPE_1__ m_pkthdr; } ;



size_t
mbuf_pkthdr_len(const mbuf_t mbuf)
{
 return (mbuf->m_pkthdr.len);
}
