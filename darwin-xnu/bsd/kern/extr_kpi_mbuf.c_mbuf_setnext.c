
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {scalar_t__ m_type; struct TYPE_4__* m_next; int * m_nextpkt; } ;


 int EINVAL ;
 scalar_t__ MT_FREE ;

errno_t
mbuf_setnext(mbuf_t mbuf, mbuf_t next)
{
 if (next && ((next)->m_nextpkt != ((void*)0) ||
     (next)->m_type == MT_FREE))
  return (EINVAL);
 mbuf->m_next = next;

 return (0);
}
