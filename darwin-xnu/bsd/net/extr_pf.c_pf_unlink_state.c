
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ state; scalar_t__ seqlo; int seqhi; } ;
struct TYPE_9__ {int ptr; } ;
struct pf_state {scalar_t__ creatorid; int timeout; int unlink_hooks; int tag; TYPE_7__ src; TYPE_6__* state_key; TYPE_1__ rule; } ;
struct TYPE_16__ {scalar_t__ hostid; } ;
struct TYPE_12__ {int port; } ;
struct TYPE_13__ {TYPE_4__ xport; int addr; } ;
struct TYPE_10__ {int port; } ;
struct TYPE_11__ {TYPE_2__ xport; int addr; } ;
struct TYPE_14__ {TYPE_5__ lan; TYPE_3__ ext_lan; int af_lan; } ;


 int HOOK_FREE ;
 int HOOK_REMOVE ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PFTM_UNLINKED ;
 scalar_t__ PF_TCPS_PROXY_DST ;
 int RB_REMOVE (int ,int *,struct pf_state*) ;
 int TH_ACK ;
 int TH_RST ;
 int hook_runloop (int *,int) ;
 int pf_detach_state (struct pf_state*,int ) ;
 int pf_lock ;
 int pf_send_tcp (int ,int ,int *,int *,int ,int ,int ,scalar_t__,int,int ,int ,int ,int,int ,int *,int *) ;
 int pf_src_tree_remove_state (struct pf_state*) ;
 int pf_state_tree_id ;
 TYPE_8__ pf_status ;
 int pfsync_delete_state (struct pf_state*) ;
 int tree_id ;

void
pf_unlink_state(struct pf_state *cur)
{
 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 if (cur->src.state == PF_TCPS_PROXY_DST) {
  pf_send_tcp(cur->rule.ptr, cur->state_key->af_lan,
      &cur->state_key->ext_lan.addr, &cur->state_key->lan.addr,
      cur->state_key->ext_lan.xport.port,
      cur->state_key->lan.xport.port,
      cur->src.seqhi, cur->src.seqlo + 1,
      TH_RST|TH_ACK, 0, 0, 0, 1, cur->tag, ((void*)0), ((void*)0));
 }

 hook_runloop(&cur->unlink_hooks, HOOK_REMOVE|HOOK_FREE);
 RB_REMOVE(pf_state_tree_id, &tree_id, cur);




 cur->timeout = PFTM_UNLINKED;
 pf_src_tree_remove_state(cur);
 pf_detach_state(cur, 0);
}
