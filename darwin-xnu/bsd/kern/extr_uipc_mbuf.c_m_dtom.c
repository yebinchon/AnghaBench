
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ x ;
struct mbuf {int dummy; } ;


 int MSIZE ;

struct mbuf *
m_dtom(void *x)
{
 return ((struct mbuf *)((uintptr_t)(x) & ~(MSIZE-1)));
}
