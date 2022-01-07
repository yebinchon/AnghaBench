
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_9__ {struct TYPE_9__* obj_next; } ;
typedef TYPE_1__ mcache_obj_t ;
struct TYPE_10__ {scalar_t__ mca_contents_size; int * mca_contents; } ;
typedef TYPE_2__ mcache_audit_t ;
typedef int boolean_t ;


 scalar_t__ AUDIT_CONTENTS_SIZE ;
 int MCACHE_FREE_PATTERN ;
 int MC_MBUF ;
 int VERIFY (int) ;
 int m_maxsize (int ) ;
 int mcache_audit_free_verify_set (TYPE_2__*,void*,int ,int ) ;
 int mcache_set_pattern (int ,struct mbuf*,int ) ;
 int mcl_audit_restore_mbuf (struct mbuf*,TYPE_2__*,int ) ;
 int mcl_audit_save_mbuf (struct mbuf*,TYPE_2__*) ;
 int mcl_audit_verify_nextptr (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ mclverify ;

__attribute__((used)) static void
mcl_audit_mbuf(mcache_audit_t *mca, void *addr, boolean_t composite,
    boolean_t alloc)
{
 struct mbuf *m = addr;
 mcache_obj_t *next = ((mcache_obj_t *)m)->obj_next;

 VERIFY(mca->mca_contents != ((void*)0) &&
     mca->mca_contents_size == AUDIT_CONTENTS_SIZE);

 if (mclverify)
  mcl_audit_verify_nextptr(next, mca);

 if (!alloc) {

  mcl_audit_save_mbuf(m, mca);
  if (mclverify) {
   mcache_set_pattern(MCACHE_FREE_PATTERN, m,
       m_maxsize(MC_MBUF));
  }
  ((mcache_obj_t *)m)->obj_next = next;
  return;
 }


 if (mclverify) {
  mcache_audit_free_verify_set(mca, addr, 0, m_maxsize(MC_MBUF));
 }

 mcl_audit_restore_mbuf(m, mca, composite);
}
