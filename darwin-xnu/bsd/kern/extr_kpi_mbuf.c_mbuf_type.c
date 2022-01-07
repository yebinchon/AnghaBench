
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbuf_type_t ;
typedef TYPE_1__* mbuf_t ;
struct TYPE_3__ {int m_type; } ;



mbuf_type_t
mbuf_type(const mbuf_t mbuf)
{
 return (mbuf->m_type);
}
