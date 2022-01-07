
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int32_t ;
typedef scalar_t__ nstat_src_ref_t ;
struct TYPE_18__ {scalar_t__ srcref; int filter; TYPE_6__* ns_control; scalar_t__ seq; int cookie; TYPE_4__* provider; } ;
typedef TYPE_3__ nstat_src ;
typedef int nstat_provider_cookie_t ;
struct TYPE_19__ {size_t nstat_provider_id; } ;
typedef TYPE_4__ nstat_provider ;
struct TYPE_17__ {int context; int length; int type; } ;
struct TYPE_20__ {size_t provider; scalar_t__ srcref; TYPE_2__ hdr; } ;
typedef TYPE_5__ nstat_msg_src_added ;
struct TYPE_21__ {int ncs_flags; int ncs_mtx; int ncs_src_queue; int ncs_unit; int ncs_kctl; TYPE_1__* ncs_provider_filters; } ;
typedef TYPE_6__ nstat_control_state ;
typedef int * mbuf_t ;
typedef scalar_t__ errno_t ;
typedef int boolean_t ;
struct TYPE_22__ {int nstat_srcaddedfailures; } ;
struct TYPE_16__ {int npf_flags; } ;


 int CTL_DATA_EOR ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOMEM ;
 int MBUF_DONTWAIT ;
 int NSTAT_FILTER_NOZEROBYTES ;
 int NSTAT_FILTER_PROVIDER_NOZEROBYTES ;
 int NSTAT_FILTER_SUPPRESS_SRC_ADDED ;
 int NSTAT_FILTER_TCP_NO_EARLY_CLOSE ;
 int NSTAT_FLAG_CLEANUP ;
 int NSTAT_MSG_TYPE_SRC_ADDED ;
 scalar_t__ NSTAT_SRC_REF_INVALID ;
 int OSFree (TYPE_3__*,int,int ) ;
 TYPE_3__* OSMalloc (int,int ) ;
 int TAILQ_INSERT_HEAD (int *,TYPE_3__*,int ) ;
 int bzero (TYPE_5__*,int) ;
 scalar_t__ ctl_enqueuembuf (int ,int ,int *,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ mbuf_allocpacket (int ,int,unsigned int*,int **) ;
 TYPE_5__* mbuf_data (int *) ;
 int mbuf_freem (int *) ;
 int mbuf_len (int *) ;
 int mbuf_pkthdr_setlen (int *,int ) ;
 int mbuf_setlen (int *,int) ;
 int ns_control_link ;
 scalar_t__ nstat_control_next_src_ref (TYPE_6__*) ;
 int nstat_malloc_tag ;
 TYPE_7__ nstat_stats ;

__attribute__((used)) static errno_t
nstat_control_source_add(
 u_int64_t context,
 nstat_control_state *state,
 nstat_provider *provider,
 nstat_provider_cookie_t cookie)
{

 mbuf_t msg = ((void*)0);
 nstat_src_ref_t *srcrefp = ((void*)0);

 u_int64_t provider_filter_flagss =
     state->ncs_provider_filters[provider->nstat_provider_id].npf_flags;
 boolean_t tell_user =
     ((provider_filter_flagss & NSTAT_FILTER_SUPPRESS_SRC_ADDED) == 0);
 u_int32_t src_filter =
     (provider_filter_flagss & NSTAT_FILTER_PROVIDER_NOZEROBYTES)
  ? NSTAT_FILTER_NOZEROBYTES : 0;

 if (provider_filter_flagss & NSTAT_FILTER_TCP_NO_EARLY_CLOSE)
 {
  src_filter |= NSTAT_FILTER_TCP_NO_EARLY_CLOSE;
 }

 if (tell_user)
 {
  unsigned int one = 1;

  if (mbuf_allocpacket(MBUF_DONTWAIT, sizeof(nstat_msg_src_added),
      &one, &msg) != 0)
   return ENOMEM;

  mbuf_setlen(msg, sizeof(nstat_msg_src_added));
  mbuf_pkthdr_setlen(msg, mbuf_len(msg));
  nstat_msg_src_added *add = mbuf_data(msg);
  bzero(add, sizeof(*add));
  add->hdr.type = NSTAT_MSG_TYPE_SRC_ADDED;
  add->hdr.length = mbuf_len(msg);
  add->hdr.context = context;
  add->provider = provider->nstat_provider_id;
  srcrefp = &add->srcref;
 }


 nstat_src *src = OSMalloc(sizeof(*src), nstat_malloc_tag);
 if (src == ((void*)0))
 {
  if (msg) mbuf_freem(msg);
  return ENOMEM;
 }


 lck_mtx_lock(&state->ncs_mtx);

 src->srcref = nstat_control_next_src_ref(state);
 if (srcrefp)
  *srcrefp = src->srcref;

 if (state->ncs_flags & NSTAT_FLAG_CLEANUP || src->srcref == NSTAT_SRC_REF_INVALID)
 {
  lck_mtx_unlock(&state->ncs_mtx);
  OSFree(src, sizeof(*src), nstat_malloc_tag);
  if (msg) mbuf_freem(msg);
  return EINVAL;
 }
 src->provider = provider;
 src->cookie = cookie;
 src->filter = src_filter;
 src->seq = 0;

 if (msg)
 {

  errno_t result = ctl_enqueuembuf(state->ncs_kctl, state->ncs_unit, msg,
      CTL_DATA_EOR);
  if (result != 0)
  {
   nstat_stats.nstat_srcaddedfailures += 1;
   lck_mtx_unlock(&state->ncs_mtx);
   OSFree(src, sizeof(*src), nstat_malloc_tag);
   mbuf_freem(msg);
   return result;
  }
 }

 TAILQ_INSERT_HEAD(&state->ncs_src_queue, src, ns_control_link);
 src->ns_control = state;

 lck_mtx_unlock(&state->ncs_mtx);

 return 0;
}
