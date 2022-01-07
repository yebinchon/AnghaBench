
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pf_state {scalar_t__ timeout; TYPE_4__* state_key; } ;
struct TYPE_6__ {struct pf_state* grev1_state; } ;
struct TYPE_5__ {int * pptp_state; } ;
struct TYPE_7__ {TYPE_2__ pptp; TYPE_1__ grev1; } ;
struct pf_app_state {TYPE_3__ u; } ;
struct TYPE_8__ {struct pf_app_state* app_state; } ;


 scalar_t__ PFTM_MAX ;
 scalar_t__ PFTM_PURGE ;

__attribute__((used)) static void
pf_pptp_unlink(struct pf_state *s)
{
 struct pf_app_state *as = s->state_key->app_state;
 struct pf_state *grev1s = as->u.pptp.grev1_state;

 if (grev1s) {
  struct pf_app_state *gas = grev1s->state_key->app_state;

  if (grev1s->timeout < PFTM_MAX)
   grev1s->timeout = PFTM_PURGE;
  gas->u.grev1.pptp_state = ((void*)0);
  as->u.pptp.grev1_state = ((void*)0);
 }
}
