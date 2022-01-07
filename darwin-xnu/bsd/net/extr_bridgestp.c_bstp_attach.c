
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int bs_last_tc_time; int bs_rtage_cb; int bs_state_cb; int bs_protover; int bs_txholdcount; int bs_migration_delay; int bs_hold_time; int bs_bridge_priority; int bs_bridge_fdelay; int bs_bridge_htime; int bs_bridge_max_age; int bs_bplist; } ;
struct bstp_cb_ops {int bcb_rtage; int bcb_state; } ;


 int BSTP_DEFAULT_BRIDGE_PRIORITY ;
 int BSTP_DEFAULT_FORWARD_DELAY ;
 int BSTP_DEFAULT_HELLO_TIME ;
 int BSTP_DEFAULT_HOLD_COUNT ;
 int BSTP_DEFAULT_HOLD_TIME ;
 int BSTP_DEFAULT_MAX_AGE ;
 int BSTP_DEFAULT_MIGRATE_DELAY ;
 int BSTP_LOCK_INIT (struct bstp_state*) ;
 int BSTP_PROTO_RSTP ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct bstp_state*,int ) ;
 int bs_list ;
 int bstp_list ;
 int bstp_list_mtx ;
 int getmicrotime (int *) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;

void
bstp_attach(struct bstp_state *bs, struct bstp_cb_ops *cb)
{
 BSTP_LOCK_INIT(bs);
 LIST_INIT(&bs->bs_bplist);

 bs->bs_bridge_max_age = BSTP_DEFAULT_MAX_AGE;
 bs->bs_bridge_htime = BSTP_DEFAULT_HELLO_TIME;
 bs->bs_bridge_fdelay = BSTP_DEFAULT_FORWARD_DELAY;
 bs->bs_bridge_priority = BSTP_DEFAULT_BRIDGE_PRIORITY;
 bs->bs_hold_time = BSTP_DEFAULT_HOLD_TIME;
 bs->bs_migration_delay = BSTP_DEFAULT_MIGRATE_DELAY;
 bs->bs_txholdcount = BSTP_DEFAULT_HOLD_COUNT;
 bs->bs_protover = BSTP_PROTO_RSTP;
 bs->bs_state_cb = cb->bcb_state;
 bs->bs_rtage_cb = cb->bcb_rtage;


 getmicrotime(&bs->bs_last_tc_time);

 lck_mtx_lock(bstp_list_mtx);
 LIST_INSERT_HEAD(&bstp_list, bs, bs_list);
 lck_mtx_unlock(bstp_list_mtx);
}
