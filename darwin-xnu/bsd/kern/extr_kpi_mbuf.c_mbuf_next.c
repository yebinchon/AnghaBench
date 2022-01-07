
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
struct TYPE_4__ {struct TYPE_4__* m_next; } ;



mbuf_t
mbuf_next(const mbuf_t mbuf)
{
 return (mbuf->m_next);
}
