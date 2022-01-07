
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int nstat_provider_id_t ;
struct TYPE_7__ {int provider; int target_uuid; int target_pid; int events; int filter; } ;
typedef TYPE_2__ nstat_msg_add_all_srcs ;
struct TYPE_8__ {int ncs_watching; TYPE_1__* ncs_provider_filters; } ;
typedef TYPE_3__ nstat_control_state ;
typedef int errno_t ;
struct TYPE_6__ {int npf_uuid; int npf_pid; int npf_events; int npf_flags; } ;


 int EALREADY ;
 int atomic_or_32_ov (int*,int) ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static errno_t
nstat_set_provider_filter(
 nstat_control_state *state,
 nstat_msg_add_all_srcs *req)
{
 nstat_provider_id_t provider_id = req->provider;

 u_int32_t prev_ncs_watching = atomic_or_32_ov(&state->ncs_watching, (1 << provider_id));

 if ((prev_ncs_watching & (1 << provider_id)) != 0)
  return EALREADY;

 state->ncs_watching |= (1 << provider_id);
 state->ncs_provider_filters[provider_id].npf_flags = req->filter;
 state->ncs_provider_filters[provider_id].npf_events = req->events;
 state->ncs_provider_filters[provider_id].npf_pid = req->target_pid;
 uuid_copy(state->ncs_provider_filters[provider_id].npf_uuid, req->target_uuid);
 return 0;
}
