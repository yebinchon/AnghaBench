
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
typedef int mbuf_flags_t ;
struct TYPE_3__ {int m_flags; } ;


 int mbuf_flags_mask ;

mbuf_flags_t
mbuf_flags(const mbuf_t mbuf)
{
 return (mbuf->m_flags & mbuf_flags_mask);
}
