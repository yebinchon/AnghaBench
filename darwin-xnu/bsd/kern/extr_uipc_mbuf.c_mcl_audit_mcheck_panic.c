
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct mbuf {scalar_t__ m_type; } ;
typedef int mcache_obj_t ;
typedef int mcache_audit_t ;


 int MC_MBUF ;
 int MRANGE (struct mbuf*) ;
 int MT_FREE ;
 int mcache_dump_mca (int *) ;
 int * mcl_audit_buf2mca (int ,int *) ;
 int panic (char*,struct mbuf*,int ,int ,int ) ;

__attribute__((used)) static void
mcl_audit_mcheck_panic(struct mbuf *m)
{
 mcache_audit_t *mca;

 MRANGE(m);
 mca = mcl_audit_buf2mca(MC_MBUF, (mcache_obj_t *)m);

 panic("mcl_audit: freed mbuf %p with type 0x%x (instead of 0x%x)\n%s\n",
     m, (u_int16_t)m->m_type, MT_FREE, mcache_dump_mca(mca));

}
