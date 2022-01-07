
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct proc {int dummy; } ;
struct pfsync_state {int creatorid; int id; int ifname; int timeout; } ;
struct pfioc_state {struct pfsync_state state; } ;
struct pfi_kif {int dummy; } ;
struct pf_state_key {TYPE_1__* state_key; int unlink_hooks; } ;
struct pf_state_cmp {int creatorid; int id; } ;
struct pf_state {TYPE_1__* state_key; int unlink_hooks; } ;
struct TYPE_4__ {int states; } ;
struct TYPE_3__ {int app_state; } ;




 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int PFI_KIF_REF_NONE ;
 int PFTM_MAX ;
 int PR_WAITOK ;
 int TAILQ_INIT (int *) ;
 int VERIFY (int) ;
 int bcopy (int ,int *,int) ;
 int bzero (struct pf_state_key*,int) ;
 struct pf_state_key* pf_alloc_state_key (struct pf_state_key*,int *) ;
 TYPE_2__ pf_default_rule ;
 struct pf_state_key* pf_find_state_byid (struct pf_state_cmp*) ;
 int pf_insert_state (struct pfi_kif*,struct pf_state_key*) ;
 int pf_state_export (struct pfsync_state*,TYPE_1__*,struct pf_state_key*) ;
 int pf_state_import (struct pfsync_state*,struct pf_state_key*,struct pf_state_key*) ;
 int pf_state_key_pl ;
 int pf_state_pl ;
 struct pfi_kif* pfi_kif_get (int ) ;
 int pfi_kif_unref (struct pfi_kif*,int ) ;
 struct pf_state_key* pool_get (int *,int ) ;
 int pool_put (int *,struct pf_state_key*) ;

__attribute__((used)) static int
pfioctl_ioc_state(u_long cmd, struct pfioc_state *ps, struct proc *p)
{
#pragma unused(p)
 int error = 0;

 switch (cmd) {
 case 129: {
  struct pfsync_state *sp = &ps->state;
  struct pf_state *s;
  struct pf_state_key *sk;
  struct pfi_kif *kif;

  if (sp->timeout >= PFTM_MAX) {
   error = EINVAL;
   break;
  }
  s = pool_get(&pf_state_pl, PR_WAITOK);
  if (s == ((void*)0)) {
   error = ENOMEM;
   break;
  }
  bzero(s, sizeof (struct pf_state));
  if ((sk = pf_alloc_state_key(s, ((void*)0))) == ((void*)0)) {
   pool_put(&pf_state_pl, s);
   error = ENOMEM;
   break;
  }
  pf_state_import(sp, sk, s);
  kif = pfi_kif_get(sp->ifname);
  if (kif == ((void*)0)) {
   pool_put(&pf_state_pl, s);
   pool_put(&pf_state_key_pl, sk);
   error = ENOENT;
   break;
  }
  TAILQ_INIT(&s->unlink_hooks);
  s->state_key->app_state = 0;
  if (pf_insert_state(kif, s)) {
   pfi_kif_unref(kif, PFI_KIF_REF_NONE);
   pool_put(&pf_state_pl, s);
   error = EEXIST;
   break;
  }
  pf_default_rule.states++;
  VERIFY(pf_default_rule.states != 0);
  break;
 }

 case 128: {
  struct pf_state *s;
  struct pf_state_cmp id_key;

  bcopy(ps->state.id, &id_key.id, sizeof (id_key.id));
  id_key.creatorid = ps->state.creatorid;

  s = pf_find_state_byid(&id_key);
  if (s == ((void*)0)) {
   error = ENOENT;
   break;
  }

  pf_state_export(&ps->state, s->state_key, s);
  break;
 }

 default:
  VERIFY(0);

 }

 return (error);
}
