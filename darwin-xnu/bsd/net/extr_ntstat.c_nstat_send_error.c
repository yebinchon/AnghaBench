
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int32_t ;
struct TYPE_5__ {int length; int context; int type; } ;
struct nstat_msg_error {int error; TYPE_1__ hdr; } ;
struct TYPE_6__ {int ncs_unit; int ncs_kctl; } ;
typedef TYPE_2__ nstat_control_state ;
typedef scalar_t__ errno_t ;
typedef int err ;
struct TYPE_7__ {int nstat_msgerrorfailures; } ;


 int CTL_DATA_CRIT ;
 int CTL_DATA_EOR ;
 int NSTAT_MSG_TYPE_ERROR ;
 int bzero (struct nstat_msg_error*,int) ;
 scalar_t__ ctl_enqueuedata (int ,int ,struct nstat_msg_error*,int,int) ;
 TYPE_3__ nstat_stats ;

__attribute__((used)) static void
nstat_send_error(
    nstat_control_state *state,
    u_int64_t context,
    u_int32_t error)
{
 errno_t result;
 struct nstat_msg_error err;

 bzero(&err, sizeof(err));
 err.hdr.type = NSTAT_MSG_TYPE_ERROR;
 err.hdr.length = sizeof(err);
 err.hdr.context = context;
 err.error = error;

 result = ctl_enqueuedata(state->ncs_kctl, state->ncs_unit, &err,
        sizeof(err), CTL_DATA_EOR | CTL_DATA_CRIT);
 if (result != 0)
  nstat_stats.nstat_msgerrorfailures++;
}
