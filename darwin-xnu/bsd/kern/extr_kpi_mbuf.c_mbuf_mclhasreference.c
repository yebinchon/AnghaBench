
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
struct TYPE_4__ {int m_flags; } ;


 int M_EXT ;
 int m_mclhasreference (TYPE_1__*) ;

int
mbuf_mclhasreference(mbuf_t mbuf)
{
 if ((mbuf->m_flags & M_EXT))
  return (m_mclhasreference(mbuf));
 else
  return (0);
}
