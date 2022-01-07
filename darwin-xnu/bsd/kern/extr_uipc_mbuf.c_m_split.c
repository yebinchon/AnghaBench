
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 struct mbuf* m_split0 (struct mbuf*,int,int,int) ;

struct mbuf *
m_split(struct mbuf *m0, int len0, int wait)
{
 return (m_split0(m0, len0, wait, 1));
}
