
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;


 int MT_DATA ;
 struct mbuf* _M_RETRYHDR (int,int ) ;

struct mbuf *
m_getpackethdrs(int num_needed, int how)
{
 struct mbuf *m;
 struct mbuf **np, *top;

 top = ((void*)0);
 np = &top;

 while (num_needed--) {
  m = _M_RETRYHDR(how, MT_DATA);
  if (m == ((void*)0))
   break;

  *np = m;
  np = &m->m_nextpkt;
 }

 return (top);
}
