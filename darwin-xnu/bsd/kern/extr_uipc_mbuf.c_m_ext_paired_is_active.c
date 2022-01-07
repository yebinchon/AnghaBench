
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 scalar_t__ MBUF_IS_PAIRED (struct mbuf*) ;
 scalar_t__ MEXT_MINREF (struct mbuf*) ;
 scalar_t__ MEXT_PREF (struct mbuf*) ;

int
m_ext_paired_is_active(struct mbuf *m)
{
 return (MBUF_IS_PAIRED(m) ? (MEXT_PREF(m) > MEXT_MINREF(m)) : 1);
}
