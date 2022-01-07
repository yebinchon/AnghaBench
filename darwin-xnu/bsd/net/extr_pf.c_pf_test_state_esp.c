
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_16__ ;
typedef struct TYPE_23__ TYPE_15__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct pfi_kif {int dummy; } ;
struct pf_state_peer {scalar_t__ state; } ;
struct TYPE_19__ {scalar_t__ spi; } ;
struct TYPE_25__ {int s_addr; } ;
struct TYPE_24__ {TYPE_1__ v4addr; } ;
struct TYPE_20__ {TYPE_11__ xport; TYPE_16__ addr; } ;
struct TYPE_29__ {scalar_t__ spi; } ;
struct TYPE_30__ {TYPE_5__ xport; TYPE_16__ addr; } ;
struct TYPE_28__ {TYPE_16__ addr; } ;
struct TYPE_27__ {TYPE_16__ addr; } ;
struct pf_state_key_cmp {int af_gwy; int af_lan; TYPE_12__ ext_lan; TYPE_6__ gwy; TYPE_4__ lan; TYPE_3__ ext_gwy; int proto; } ;
struct TYPE_31__ {scalar_t__ spi; } ;
struct TYPE_32__ {TYPE_16__ addr; TYPE_7__ xport; } ;
struct TYPE_33__ {scalar_t__ spi; } ;
struct TYPE_18__ {TYPE_16__ addr; TYPE_9__ xport; } ;
struct TYPE_21__ {scalar_t__ spi; } ;
struct TYPE_22__ {TYPE_13__ xport; } ;
struct pf_state_key {scalar_t__ flowhash; int direction; TYPE_8__ lan; TYPE_10__ gwy; int flowsrc; TYPE_14__ ext_lan; } ;
struct pf_state {scalar_t__ creatorid; struct pf_state_key* state_key; int timeout; int expire; struct pf_state_peer src; struct pf_state_peer dst; int unlink_hooks; } ;
struct TYPE_26__ {struct pf_esp_hdr* esp; } ;
struct pf_pdesc {int af; int pktflags; scalar_t__ flowhash; TYPE_16__* dst; int ip_sum; TYPE_16__* src; int flowsrc; TYPE_2__ hdr; } ;
struct pf_esp_hdr {scalar_t__ spi; } ;
typedef int key ;
struct TYPE_23__ {scalar_t__ hostid; } ;




 int HOOK_FREE ;
 int HOOK_REMOVE ;
 int IPPROTO_ESP ;
 void* PFESPS_ESTABLISHED ;
 scalar_t__ PFESPS_INITIATING ;
 int PFTM_ESP_ESTABLISHED ;
 int PFTM_ESP_INITIATING ;
 int PFTM_UNLINKED ;
 int PF_ACPY (TYPE_16__*,TYPE_16__*,int) ;
 int PF_DROP ;
 int PF_DT_SKIP_EXTGWY ;
 int PF_DT_SKIP_LANEXT ;
 int PF_IN ;
 int PF_OUT ;
 int PF_PASS ;
 int PKTF_FLOW_ADV ;
 int PKTF_FLOW_ID ;
 scalar_t__ RB_INSERT (int ,int *,struct pf_state_key*) ;
 int RB_REMOVE (int ,int *,struct pf_state_key*) ;
 scalar_t__ STATE_ADDR_TRANSLATE (struct pf_state_key*) ;
 int hook_runloop (int *,int) ;
 int memset (struct pf_state_key_cmp*,int ,int) ;
 int pf_change_a (int *,int ,int ,int ) ;
 int pf_detach_state (struct pf_state*,int ) ;
 struct pf_state* pf_find_state (struct pfi_kif*,struct pf_state_key_cmp*,int) ;
 int pf_free_state (struct pf_state*) ;
 int pf_src_tree_remove_state (struct pf_state*) ;
 scalar_t__ pf_state_lookup_aux (struct pf_state**,struct pfi_kif*,int,int*) ;
 int pf_state_tree_ext_gwy ;
 int pf_state_tree_lan_ext ;
 int pf_statetbl_ext_gwy ;
 int pf_statetbl_lan_ext ;
 TYPE_15__ pf_status ;
 int pf_time_second () ;
 int pfsync_delete_state (struct pf_state*) ;

__attribute__((used)) static int
pf_test_state_esp(struct pf_state **state, int direction, struct pfi_kif *kif,
    int off, struct pf_pdesc *pd)
{
#pragma unused(off)
 struct pf_state_peer *src;
 struct pf_state_peer *dst;
 struct pf_state_key_cmp key;
 struct pf_esp_hdr *esp = pd->hdr.esp;
 int action;

 memset(&key, 0, sizeof (key));
 key.proto = IPPROTO_ESP;
 if (direction == PF_IN) {
  key.af_gwy = pd->af;
  PF_ACPY(&key.ext_gwy.addr, pd->src, key.af_gwy);
  PF_ACPY(&key.gwy.addr, pd->dst, key.af_gwy);
  key.gwy.xport.spi = esp->spi;
 } else {
  key.af_lan = pd->af;
  PF_ACPY(&key.lan.addr, pd->src, key.af_lan);
  PF_ACPY(&key.ext_lan.addr, pd->dst, key.af_lan);
  key.ext_lan.xport.spi = esp->spi;
 }

 *state = pf_find_state(kif, &key, direction);

 if (*state == 0) {
  struct pf_state *s;







  if (direction == PF_IN) {
   key.gwy.xport.spi = 0;

   s = pf_find_state(kif, &key, direction);
   if (s) {
    struct pf_state_key *sk = s->state_key;

    RB_REMOVE(pf_state_tree_ext_gwy,
        &pf_statetbl_ext_gwy, sk);
    sk->lan.xport.spi = sk->gwy.xport.spi =
        esp->spi;

    if (RB_INSERT(pf_state_tree_ext_gwy,
        &pf_statetbl_ext_gwy, sk))
     pf_detach_state(s, PF_DT_SKIP_EXTGWY);
    else
     *state = s;
   }
  } else {
   key.ext_lan.xport.spi = 0;

   s = pf_find_state(kif, &key, direction);
   if (s) {
    struct pf_state_key *sk = s->state_key;

    RB_REMOVE(pf_state_tree_lan_ext,
        &pf_statetbl_lan_ext, sk);
    sk->ext_lan.xport.spi = esp->spi;

    if (RB_INSERT(pf_state_tree_lan_ext,
        &pf_statetbl_lan_ext, sk))
     pf_detach_state(s, PF_DT_SKIP_LANEXT);
    else
     *state = s;
   }
  }

  if (s) {
   if (*state == 0) {




    s->timeout = PFTM_UNLINKED;
    hook_runloop(&s->unlink_hooks,
        HOOK_REMOVE|HOOK_FREE);
    pf_src_tree_remove_state(s);
    pf_free_state(s);
    return (PF_DROP);
   }
  }
 }


 if (*state != ((void*)0) && pd != ((void*)0) && !(pd->pktflags & PKTF_FLOW_ID)) {
  pd->flowsrc = (*state)->state_key->flowsrc;
  pd->flowhash = (*state)->state_key->flowhash;
  if (pd->flowhash != 0) {
   pd->pktflags |= PKTF_FLOW_ID;
   pd->pktflags &= ~PKTF_FLOW_ADV;
  }
 }

 if (pf_state_lookup_aux(state, kif, direction, &action))
  return (action);

 if (direction == (*state)->state_key->direction) {
  src = &(*state)->src;
  dst = &(*state)->dst;
 } else {
  src = &(*state)->dst;
  dst = &(*state)->src;
 }


 if (src->state < PFESPS_INITIATING)
  src->state = PFESPS_INITIATING;


 (*state)->expire = pf_time_second();
 if (src->state >= PFESPS_INITIATING &&
     dst->state >= PFESPS_INITIATING) {
  (*state)->timeout = PFTM_ESP_ESTABLISHED;
  src->state = PFESPS_ESTABLISHED;
  dst->state = PFESPS_ESTABLISHED;
 } else {
  (*state)->timeout = PFTM_ESP_INITIATING;
 }

 if (STATE_ADDR_TRANSLATE((*state)->state_key)) {
  if (direction == PF_OUT) {
   switch (pd->af) {
   }
  } else {
   switch (pd->af) {
   }
  }
 }

 return (PF_PASS);
}
