
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {scalar_t__ m_flags; int m_type; struct mbuf* m_next; } ;
struct TYPE_4__ {scalar_t__ mca_contents_size; } ;
typedef TYPE_1__ mcache_audit_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ AUDIT_CONTENTS_SIZE ;
 scalar_t__ MBUF_IS_COMPOSITE (struct mbuf*) ;
 struct mbuf* MCA_SAVED_MBUF_PTR (TYPE_1__*) ;
 int MCA_SAVED_MBUF_SIZE ;
 scalar_t__ M_EXT ;
 int VERIFY (int) ;
 int _MCHECK (struct mbuf*) ;
 int bcopy (struct mbuf*,struct mbuf*,int ) ;
 int * m_get_rfa (struct mbuf*) ;

__attribute__((used)) static void
mcl_audit_restore_mbuf(struct mbuf *m, mcache_audit_t *mca, boolean_t composite)
{
 struct mbuf *ms = MCA_SAVED_MBUF_PTR(mca);

 if (composite) {
  struct mbuf *next = m->m_next;
  VERIFY(ms->m_flags == M_EXT && m_get_rfa(ms) != ((void*)0) &&
      MBUF_IS_COMPOSITE(ms));
  VERIFY(mca->mca_contents_size == AUDIT_CONTENTS_SIZE);






  bcopy(ms, m, MCA_SAVED_MBUF_SIZE);
  m->m_next = next;
 } else {





  m->m_type = ms->m_type;
 }
 _MCHECK(m);
}
