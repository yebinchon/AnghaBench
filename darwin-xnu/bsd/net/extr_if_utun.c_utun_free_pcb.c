
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utun_pcb {int utun_pcb_lock; int utun_input_chain_lock; int utun_input_chain; } ;


 int TAILQ_REMOVE (int *,struct utun_pcb*,int ) ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int lck_rw_destroy (int *,int ) ;
 int mbuf_freem_list (int ) ;
 int utun_chain ;
 int utun_head ;
 int utun_lck_grp ;
 int utun_lock ;
 int utun_pcb_zone ;
 int zfree (int ,struct utun_pcb*) ;

__attribute__((used)) static inline void
utun_free_pcb(struct utun_pcb *pcb, bool in_list)
{




 lck_rw_destroy(&pcb->utun_pcb_lock, utun_lck_grp);
 if (in_list) {
  lck_mtx_lock(&utun_lock);
  TAILQ_REMOVE(&utun_head, pcb, utun_chain);
  lck_mtx_unlock(&utun_lock);
 }
 zfree(utun_pcb_zone, pcb);
}
