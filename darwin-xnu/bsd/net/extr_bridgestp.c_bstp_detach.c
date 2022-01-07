
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int bs_bplist; } ;


 int BSTP_LOCK_DESTROY (struct bstp_state*) ;
 int KASSERT (int ,char*) ;
 int LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct bstp_state*,int ) ;
 int bs_list ;
 int bsd_untimeout (int ,struct bstp_state*) ;
 int bstp_list_mtx ;
 int bstp_tick ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

void
bstp_detach(struct bstp_state *bs)
{
 KASSERT(LIST_EMPTY(&bs->bs_bplist), ("bstp still active"));

 lck_mtx_lock(bstp_list_mtx);
 LIST_REMOVE(bs, bs_list);
 lck_mtx_unlock(bstp_list_mtx);
 bsd_untimeout(bstp_tick, bs);
 BSTP_LOCK_DESTROY(bs);
}
