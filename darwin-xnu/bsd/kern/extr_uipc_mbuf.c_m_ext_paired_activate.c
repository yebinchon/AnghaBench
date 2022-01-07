
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int ext_size; int * ext_buf; } ;
struct mbuf {int m_flags; int m_type; TYPE_1__ m_ext; } ;
struct ext_ref {int dummy; } ;
typedef int m_ext_free_func_t ;
typedef int * caddr_t ;


 int EXTF_PAIRED ;
 int MBUF_INIT (struct mbuf*,int,int) ;
 int MBUF_IS_PAIRED (struct mbuf*) ;
 int MEXT_INIT (struct mbuf*,int *,int ,int ,int *,struct ext_ref*,int,int,int,int ,int ,struct mbuf*) ;
 scalar_t__ MEXT_MINREF (struct mbuf*) ;
 scalar_t__ MEXT_PREF (struct mbuf*) ;
 int MEXT_PRIV (struct mbuf*) ;
 scalar_t__ MEXT_REF (struct mbuf*) ;
 int M_PKTHDR ;
 int VERIFY (int) ;
 int m_get_ext_free (struct mbuf*) ;
 struct ext_ref* m_get_rfa (struct mbuf*) ;

void
m_ext_paired_activate(struct mbuf *m)
{
 struct ext_ref *rfa;
 int hdr, type;
 caddr_t extbuf;
 m_ext_free_func_t extfree;
 u_int extsize;

 VERIFY(MBUF_IS_PAIRED(m));
 VERIFY(MEXT_REF(m) == MEXT_MINREF(m));
 VERIFY(MEXT_PREF(m) == MEXT_MINREF(m));

 hdr = (m->m_flags & M_PKTHDR);
 type = m->m_type;
 extbuf = m->m_ext.ext_buf;
 extfree = m_get_ext_free(m);
 extsize = m->m_ext.ext_size;
 rfa = m_get_rfa(m);

 VERIFY(extbuf != ((void*)0) && rfa != ((void*)0));







 MBUF_INIT(m, hdr, type);
 MEXT_INIT(m, extbuf, extsize, extfree, (caddr_t)m, rfa,
     1, 1, 2, EXTF_PAIRED, MEXT_PRIV(m), m);
}
