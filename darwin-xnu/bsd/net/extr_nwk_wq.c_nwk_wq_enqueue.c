
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nwk_wq_entry {int dummy; } ;
typedef int caddr_t ;


 int TAILQ_INSERT_TAIL (int *,struct nwk_wq_entry*,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nwk_wq_head ;
 int nwk_wq_link ;
 int nwk_wq_lock ;
 int nwk_wq_waitch ;
 int wakeup (int ) ;

void
nwk_wq_enqueue(struct nwk_wq_entry *nwk_item)
{
 lck_mtx_lock(&nwk_wq_lock);
 TAILQ_INSERT_TAIL(&nwk_wq_head, nwk_item, nwk_wq_link);
 lck_mtx_unlock(&nwk_wq_lock);
 wakeup((caddr_t)&nwk_wq_waitch);
}
