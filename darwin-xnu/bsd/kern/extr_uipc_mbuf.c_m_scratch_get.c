
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct pkthdr {int pkt_flags; int pkt_mpriv; } ;
struct mbuf {int m_flags; struct pkthdr m_pkthdr; } ;
typedef int mcache_obj_t ;
struct TYPE_4__ {int mca_uflags; } ;
typedef TYPE_1__ mcache_audit_t ;


 int MB_SCVALID ;
 int MC_MBUF ;
 int M_PKTHDR ;
 int PKTF_PRIV_GUARDED ;
 int VERIFY (int) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int mbuf_mlock ;
 TYPE_1__* mcl_audit_buf2mca (int ,int *) ;
 int mcl_audit_scratch (TYPE_1__*) ;
 scalar_t__ mcltrace ;
 int panic_plain (char*,struct mbuf*,int) ;

u_int32_t
m_scratch_get(struct mbuf *m, u_int8_t **p)
{
 struct pkthdr *pkt = &m->m_pkthdr;

 VERIFY(m->m_flags & M_PKTHDR);


 if (pkt->pkt_flags & PKTF_PRIV_GUARDED) {
  panic_plain("Invalid attempt to access guarded module-private "
      "area: mbuf %p, pkt_flags 0x%x\n", m, pkt->pkt_flags);

 }

 if (mcltrace) {
  mcache_audit_t *mca;

  lck_mtx_lock(mbuf_mlock);
  mca = mcl_audit_buf2mca(MC_MBUF, (mcache_obj_t *)m);
  if (mca->mca_uflags & MB_SCVALID)
   mcl_audit_scratch(mca);
  lck_mtx_unlock(mbuf_mlock);
 }

 *p = (u_int8_t *)&pkt->pkt_mpriv;
 return (sizeof (pkt->pkt_mpriv));
}
