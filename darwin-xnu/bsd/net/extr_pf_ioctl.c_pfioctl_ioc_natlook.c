
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_long ;
struct proc {int dummy; } ;
struct TYPE_14__ {int port; } ;
struct pfioc_natlook {int direction; TYPE_7__ sxport; int rsxport; int af; int saddr; int rsaddr; int rdxport; int rdaddr; TYPE_7__ dxport; int daddr; int proto; int proto_variant; } ;
struct TYPE_11__ {int xport; int addr; } ;
struct TYPE_10__ {int xport; int addr; } ;
struct TYPE_9__ {int xport; int addr; } ;
struct TYPE_8__ {int xport; int addr; } ;
struct pf_state_key_cmp {TYPE_4__ ext_lan; TYPE_3__ lan; int af_lan; TYPE_2__ gwy; TYPE_1__ ext_gwy; int af_gwy; int proto_variant; int proto; } ;
struct TYPE_13__ {TYPE_7__ xport; int addr; } ;
struct TYPE_12__ {TYPE_7__ xport; int addr; } ;
struct pf_state_key {TYPE_6__ gwy; int af_gwy; TYPE_5__ lan; int af_lan; } ;
struct pf_state {struct pf_state_key* state_key; } ;



 int E2BIG ;
 int EINVAL ;
 int ENOENT ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int PF_ACPY (int *,int *,int ) ;
 int PF_AZERO (int *,int ) ;
 int PF_IN ;
 int PF_OUT ;
 int VERIFY (int ) ;
 int memcpy (int *,TYPE_7__*,int) ;
 struct pf_state* pf_find_state_all (struct pf_state_key_cmp*,int,int*) ;

__attribute__((used)) static int
pfioctl_ioc_natlook(u_long cmd, struct pfioc_natlook *pnl, struct proc *p)
{
#pragma unused(p)
 int error = 0;

 switch (cmd) {
 case 128: {
  struct pf_state_key *sk;
  struct pf_state *state;
  struct pf_state_key_cmp key;
  int m = 0, direction = pnl->direction;

  key.proto = pnl->proto;
  key.proto_variant = pnl->proto_variant;

  if (!pnl->proto ||
      PF_AZERO(&pnl->saddr, pnl->af) ||
      PF_AZERO(&pnl->daddr, pnl->af) ||
      ((pnl->proto == IPPROTO_TCP ||
      pnl->proto == IPPROTO_UDP) &&
      (!pnl->dxport.port || !pnl->sxport.port)))
   error = EINVAL;
  else {






   if (direction == PF_IN) {
    key.af_gwy = pnl->af;
    PF_ACPY(&key.ext_gwy.addr, &pnl->daddr,
     pnl->af);
    memcpy(&key.ext_gwy.xport, &pnl->dxport,
        sizeof (key.ext_gwy.xport));
    PF_ACPY(&key.gwy.addr, &pnl->saddr, pnl->af);
    memcpy(&key.gwy.xport, &pnl->sxport,
        sizeof (key.gwy.xport));
    state = pf_find_state_all(&key, PF_IN, &m);
   } else {
    key.af_lan = pnl->af;
    PF_ACPY(&key.lan.addr, &pnl->daddr, pnl->af);
    memcpy(&key.lan.xport, &pnl->dxport,
        sizeof (key.lan.xport));
    PF_ACPY(&key.ext_lan.addr, &pnl->saddr,
     pnl->af);
    memcpy(&key.ext_lan.xport, &pnl->sxport,
        sizeof (key.ext_lan.xport));
    state = pf_find_state_all(&key, PF_OUT, &m);
   }
   if (m > 1)
    error = E2BIG;
   else if (state != ((void*)0)) {
    sk = state->state_key;
    if (direction == PF_IN) {
     PF_ACPY(&pnl->rsaddr, &sk->lan.addr,
         sk->af_lan);
     memcpy(&pnl->rsxport, &sk->lan.xport,
         sizeof (pnl->rsxport));
     PF_ACPY(&pnl->rdaddr, &pnl->daddr,
         pnl->af);
     memcpy(&pnl->rdxport, &pnl->dxport,
         sizeof (pnl->rdxport));
    } else {
     PF_ACPY(&pnl->rdaddr, &sk->gwy.addr,
         sk->af_gwy);
     memcpy(&pnl->rdxport, &sk->gwy.xport,
         sizeof (pnl->rdxport));
     PF_ACPY(&pnl->rsaddr, &pnl->saddr,
         pnl->af);
     memcpy(&pnl->rsxport, &pnl->sxport,
         sizeof (pnl->rsxport));
    }
   } else
    error = ENOENT;
  }
  break;
 }

 default:
  VERIFY(0);

 }

 return (error);
}
