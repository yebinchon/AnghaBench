
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int M_COPYM_MOVE_HDR ;
 struct mbuf* m_copym_mode (struct mbuf*,int,int,int,int ) ;

struct mbuf *
m_copym(struct mbuf *m, int off0, int len, int wait)
{
 return (m_copym_mode(m, off0, len, wait, M_COPYM_MOVE_HDR));
}
