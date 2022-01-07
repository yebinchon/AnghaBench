
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_type; } ;


 int mtype_stat_dec (int) ;
 int mtype_stat_inc (int) ;

void
m_mchtype(struct mbuf *m, int t)
{
 mtype_stat_inc(t);
 mtype_stat_dec(m->m_type);
 (m)->m_type = t;
}
