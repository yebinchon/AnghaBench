
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct pfi_kif {int dummy; } ;
struct pf_state_peer {scalar_t__ state; } ;
struct TYPE_25__ {scalar_t__ port; } ;
struct TYPE_15__ {int s_addr; } ;
struct TYPE_18__ {TYPE_10__ v4addr; } ;
struct TYPE_26__ {TYPE_7__ xport; TYPE_13__ addr; } ;
struct TYPE_23__ {scalar_t__ port; } ;
struct TYPE_24__ {TYPE_5__ xport; TYPE_13__ addr; } ;
struct TYPE_21__ {scalar_t__ port; } ;
struct TYPE_22__ {TYPE_3__ xport; TYPE_13__ addr; } ;
struct TYPE_19__ {scalar_t__ port; } ;
struct TYPE_20__ {TYPE_1__ xport; TYPE_13__ addr; } ;
struct pf_state_key_cmp {int af_gwy; int af_lan; TYPE_8__ ext_lan; TYPE_6__ lan; TYPE_4__ gwy; TYPE_2__ ext_gwy; int proto; scalar_t__ app_state; } ;
struct pf_state {TYPE_12__* state_key; int timeout; int expire; struct pf_state_peer src; struct pf_state_peer dst; } ;
struct pf_pdesc {int af; TYPE_13__* dst; int ip_sum; TYPE_13__* src; int proto; } ;
struct TYPE_27__ {TYPE_13__ addr; } ;
struct TYPE_16__ {TYPE_13__ addr; } ;
struct TYPE_17__ {int direction; TYPE_11__ lan; TYPE_9__ gwy; } ;




 scalar_t__ PFOTHERS_MULTIPLE ;
 scalar_t__ PFOTHERS_SINGLE ;
 int PFTM_OTHER_MULTIPLE ;
 int PFTM_OTHER_SINGLE ;
 int PF_ACPY (TYPE_13__*,TYPE_13__*,int) ;
 int PF_IN ;
 int PF_OUT ;
 int PF_PASS ;
 scalar_t__ STATE_ADDR_TRANSLATE (TYPE_12__*) ;
 int STATE_LOOKUP () ;
 int pf_change_a (int *,int ,int ,int ) ;
 int pf_time_second () ;

__attribute__((used)) static int
pf_test_state_other(struct pf_state **state, int direction, struct pfi_kif *kif,
    struct pf_pdesc *pd)
{
 struct pf_state_peer *src, *dst;
 struct pf_state_key_cmp key;

 key.app_state = 0;
 key.proto = pd->proto;
 if (direction == PF_IN) {
  key.af_gwy = pd->af;
  PF_ACPY(&key.ext_gwy.addr, pd->src, key.af_gwy);
  PF_ACPY(&key.gwy.addr, pd->dst, key.af_gwy);
  key.ext_gwy.xport.port = 0;
  key.gwy.xport.port = 0;
 } else {
  key.af_lan = pd->af;
  PF_ACPY(&key.lan.addr, pd->src, key.af_lan);
  PF_ACPY(&key.ext_lan.addr, pd->dst, key.af_lan);
  key.lan.xport.port = 0;
  key.ext_lan.xport.port = 0;
 }

 STATE_LOOKUP();

 if (direction == (*state)->state_key->direction) {
  src = &(*state)->src;
  dst = &(*state)->dst;
 } else {
  src = &(*state)->dst;
  dst = &(*state)->src;
 }


 if (src->state < PFOTHERS_SINGLE)
  src->state = PFOTHERS_SINGLE;
 if (dst->state == PFOTHERS_SINGLE)
  dst->state = PFOTHERS_MULTIPLE;


 (*state)->expire = pf_time_second();
 if (src->state == PFOTHERS_MULTIPLE && dst->state == PFOTHERS_MULTIPLE)
  (*state)->timeout = PFTM_OTHER_MULTIPLE;
 else
  (*state)->timeout = PFTM_OTHER_SINGLE;


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
