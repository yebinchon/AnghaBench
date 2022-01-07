
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int u_long ;
struct proc {int dummy; } ;
struct TYPE_22__ {int mask; int addr; } ;
struct TYPE_23__ {TYPE_7__ a; } ;
struct TYPE_24__ {TYPE_8__ v; } ;
struct TYPE_14__ {int xport; TYPE_9__ addr; int neg; } ;
struct TYPE_19__ {int mask; int addr; } ;
struct TYPE_20__ {TYPE_4__ a; } ;
struct TYPE_21__ {TYPE_5__ v; } ;
struct TYPE_13__ {int xport; TYPE_6__ addr; int neg; } ;
struct pfioc_state_kill {char* psk_ifname; char* psk_ownername; int psk_af; TYPE_11__ psk_dst; int psk_proto_variant; int psk_proto; TYPE_10__ psk_src; } ;
struct pf_state_host {int xport; int addr; } ;
struct pf_state_key {int af_lan; int proto; struct pf_state_host lan; struct pf_state_host ext_lan; int direction; } ;
struct TYPE_18__ {TYPE_2__* ptr; } ;
struct pf_state {int sync_flags; TYPE_3__ rule; TYPE_1__* kif; struct pf_state_key* state_key; } ;
struct TYPE_17__ {int owner; } ;
struct TYPE_16__ {int pfik_name; } ;
struct TYPE_15__ {int hostid; } ;




 int PFSTATE_NOSYNC ;
 int PF_MATCHA (int ,int *,int *,int *,int) ;
 int PF_OUT ;
 struct pf_state* RB_MIN (int ,int *) ;
 struct pf_state* RB_NEXT (int ,int *,struct pf_state*) ;
 int VERIFY (int ) ;
 int pf_match_xport (int ,int ,int *,int *) ;
 int pf_state_tree_id ;
 TYPE_12__ pf_status ;
 int pf_unlink_state (struct pf_state*) ;
 int pfsync_clear_states (int ,char*) ;
 int pfsync_delete_state (struct pf_state*) ;
 int strcmp (char*,int ) ;
 int tree_id ;

__attribute__((used)) static int
pfioctl_ioc_state_kill(u_long cmd, struct pfioc_state_kill *psk, struct proc *p)
{
#pragma unused(p)
 int error = 0;

 psk->psk_ifname[sizeof (psk->psk_ifname) - 1] = '\0';
 psk->psk_ownername[sizeof(psk->psk_ownername) - 1] = '\0';

 bool ifname_matched = 1;
 bool owner_matched = 1;

 switch (cmd) {
 case 129: {
  struct pf_state *s, *nexts;
  int killed = 0;

  for (s = RB_MIN(pf_state_tree_id, &tree_id); s; s = nexts) {
   nexts = RB_NEXT(pf_state_tree_id, &tree_id, s);





   bool unlink_state = 0;
   ifname_matched = 1;
   owner_matched = 1;

   if (psk->psk_ifname[0] &&
       strcmp(psk->psk_ifname, s->kif->pfik_name)) {
    ifname_matched = 0;
   }

   if (psk->psk_ownername[0] &&
       ((((void*)0) == s->rule.ptr) ||
        strcmp(psk->psk_ownername, s->rule.ptr->owner))) {
    owner_matched = 0;
   }

   unlink_state = ifname_matched && owner_matched;

   if (unlink_state) {




    pf_unlink_state(s);
    killed++;
   }
  }
  psk->psk_af = killed;



  break;
 }

 case 128: {
  struct pf_state *s, *nexts;
  struct pf_state_key *sk;
  struct pf_state_host *src, *dst;
  int killed = 0;

  for (s = RB_MIN(pf_state_tree_id, &tree_id); s;
      s = nexts) {
   nexts = RB_NEXT(pf_state_tree_id, &tree_id, s);
   sk = s->state_key;
   ifname_matched = 1;
   owner_matched = 1;

   if (psk->psk_ifname[0] &&
       strcmp(psk->psk_ifname, s->kif->pfik_name)) {
    ifname_matched = 0;
   }

   if (psk->psk_ownername[0] &&
       ((((void*)0) == s->rule.ptr) ||
        strcmp(psk->psk_ownername, s->rule.ptr->owner))) {
    owner_matched = 0;
   }

   if (sk->direction == PF_OUT) {
    src = &sk->lan;
    dst = &sk->ext_lan;
   } else {
    src = &sk->ext_lan;
    dst = &sk->lan;
   }
   if ((!psk->psk_af || sk->af_lan == psk->psk_af) &&
       (!psk->psk_proto || psk->psk_proto == sk->proto) &&
       PF_MATCHA(psk->psk_src.neg,
       &psk->psk_src.addr.v.a.addr,
       &psk->psk_src.addr.v.a.mask,
       &src->addr, sk->af_lan) &&
       PF_MATCHA(psk->psk_dst.neg,
       &psk->psk_dst.addr.v.a.addr,
       &psk->psk_dst.addr.v.a.mask,
       &dst->addr, sk->af_lan) &&
       (pf_match_xport(psk->psk_proto,
       psk->psk_proto_variant, &psk->psk_src.xport,
       &src->xport)) &&
       (pf_match_xport(psk->psk_proto,
       psk->psk_proto_variant, &psk->psk_dst.xport,
       &dst->xport)) &&
       ifname_matched &&
       owner_matched) {





    pf_unlink_state(s);
    killed++;
   }
  }
  psk->psk_af = killed;
  break;
 }

 default:
  VERIFY(0);

 }

 return (error);
}
