
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ncs_mtx; int ncs_flags; } ;
typedef TYPE_1__ nstat_control_state ;
typedef scalar_t__ errno_t ;


 int NSTAT_FLAG_SYSINFO_SUBSCRIBED ;
 int PRIV_NET_PRIVILEGED_NETWORK_STATISTICS ;
 int kauth_cred_get () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ priv_check_cred (int ,int ,int ) ;

__attribute__((used)) static errno_t
nstat_control_handle_subscribe_sysinfo(
    nstat_control_state *state)
{
 errno_t result = priv_check_cred(kauth_cred_get(), PRIV_NET_PRIVILEGED_NETWORK_STATISTICS, 0);

 if (result != 0)
 {
  return result;
 }

 lck_mtx_lock(&state->ncs_mtx);
 state->ncs_flags |= NSTAT_FLAG_SYSINFO_SUBSCRIBED;
 lck_mtx_unlock(&state->ncs_mtx);

 return 0;
}
