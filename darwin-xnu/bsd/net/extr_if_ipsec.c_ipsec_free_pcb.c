
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipsec_pcb {int ipsec_pcb_lock; int ipsec_input_chain_lock; int ipsec_input_chain; } ;


 int TAILQ_REMOVE (int *,struct ipsec_pcb*,int ) ;
 int ipsec_chain ;
 int ipsec_head ;
 int ipsec_lck_grp ;
 int ipsec_lock ;
 int ipsec_pcb_zone ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int lck_rw_destroy (int *,int ) ;
 int mbuf_freem_list (int ) ;
 int zfree (int ,struct ipsec_pcb*) ;

__attribute__((used)) static inline void
ipsec_free_pcb(struct ipsec_pcb *pcb, bool in_list)
{




 lck_rw_destroy(&pcb->ipsec_pcb_lock, ipsec_lck_grp);
 if (in_list) {
  lck_mtx_lock(&ipsec_lock);
  TAILQ_REMOVE(&ipsec_head, pcb, ipsec_chain);
  lck_mtx_unlock(&ipsec_lock);
 }
 zfree(ipsec_pcb_zone, pcb);
}
