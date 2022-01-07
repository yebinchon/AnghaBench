
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_4__ {scalar_t__ mca_contents_size; } ;
typedef TYPE_1__ mcache_audit_t ;


 scalar_t__ AUDIT_CONTENTS_SIZE ;
 int MCA_SAVED_MBUF_PTR (TYPE_1__*) ;
 int MCA_SAVED_MBUF_SIZE ;
 int VERIFY (int) ;
 int _MCHECK (struct mbuf*) ;
 int bcopy (struct mbuf*,int ,int ) ;

__attribute__((used)) static void
mcl_audit_save_mbuf(struct mbuf *m, mcache_audit_t *mca)
{
 VERIFY(mca->mca_contents_size == AUDIT_CONTENTS_SIZE);
 _MCHECK(m);
 bcopy(m, MCA_SAVED_MBUF_PTR(mca), MCA_SAVED_MBUF_SIZE);
}
