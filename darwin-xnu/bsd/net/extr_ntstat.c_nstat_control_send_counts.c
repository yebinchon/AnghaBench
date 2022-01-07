
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_14__ {int filter; int cookie; TYPE_2__* provider; int srcref; } ;
typedef TYPE_3__ nstat_src ;
struct TYPE_17__ {scalar_t__ nstat_rxbytes; scalar_t__ nstat_txbytes; } ;
struct TYPE_12__ {int length; unsigned long long context; int flags; int type; } ;
struct TYPE_15__ {TYPE_6__ counts; scalar_t__ event_flags; int srcref; TYPE_1__ hdr; } ;
typedef TYPE_4__ nstat_msg_src_counts ;
struct TYPE_16__ {int ncs_unit; int ncs_kctl; } ;
typedef TYPE_5__ nstat_control_state ;
typedef scalar_t__ errno_t ;
typedef int counts ;
struct TYPE_18__ {int nstat_sendcountfailures; } ;
struct TYPE_13__ {scalar_t__ (* nstat_counts ) (int ,TYPE_6__*,int*) ;} ;


 int CTL_DATA_EOR ;
 scalar_t__ EAGAIN ;
 int NSTAT_FILTER_NOZEROBYTES ;
 int NSTAT_MSG_TYPE_SRC_COUNTS ;
 int bzero (TYPE_4__*,int) ;
 scalar_t__ ctl_enqueuedata (int ,int ,TYPE_4__*,int,int ) ;
 TYPE_7__ nstat_stats ;
 scalar_t__ stub1 (int ,TYPE_6__*,int*) ;

__attribute__((used)) static errno_t
nstat_control_send_counts(
 nstat_control_state *state,
 nstat_src *src,
 unsigned long long context,
 u_int16_t hdr_flags,
 int *gone)
{
 nstat_msg_src_counts counts;
 errno_t result = 0;


 if (src->provider->nstat_counts == ((void*)0))
  return (0);

 bzero(&counts, sizeof(counts));
 counts.hdr.type = NSTAT_MSG_TYPE_SRC_COUNTS;
 counts.hdr.length = sizeof(counts);
 counts.hdr.flags = hdr_flags;
 counts.hdr.context = context;
 counts.srcref = src->srcref;
 counts.event_flags = 0;

 if (src->provider->nstat_counts(src->cookie, &counts.counts, gone) == 0)
 {
  if ((src->filter & NSTAT_FILTER_NOZEROBYTES) &&
      counts.counts.nstat_rxbytes == 0 &&
      counts.counts.nstat_txbytes == 0)
  {
   result = EAGAIN;
  }
  else
  {
   result = ctl_enqueuedata(state->ncs_kctl,
       state->ncs_unit, &counts, sizeof(counts),
       CTL_DATA_EOR);
   if (result != 0)
    nstat_stats.nstat_sendcountfailures += 1;
  }
 }
 return result;
}
