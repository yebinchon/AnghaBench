
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
typedef int errno_t ;
struct TYPE_6__ {int m_flags; } ;


 int EINVAL ;
 int M_PKTHDR ;
 int m_copy_pkthdr (TYPE_1__*,TYPE_1__* const) ;

errno_t
mbuf_copy_pkthdr(mbuf_t dest, const mbuf_t src)
{
 if (((src)->m_flags & M_PKTHDR) == 0)
  return (EINVAL);

 m_copy_pkthdr(dest, src);

 return (0);
}
