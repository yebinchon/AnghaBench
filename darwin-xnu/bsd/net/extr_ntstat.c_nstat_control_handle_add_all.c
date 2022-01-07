
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ (* nstat_watcher_add ) (TYPE_4__*,TYPE_3__*) ;} ;
typedef TYPE_2__ nstat_provider ;
struct TYPE_11__ {int context; } ;
struct TYPE_13__ {int filter; TYPE_1__ hdr; int provider; } ;
typedef TYPE_3__ nstat_msg_add_all_srcs ;
struct TYPE_14__ {int ncs_mtx; int ncs_flags; } ;
typedef TYPE_4__ nstat_control_state ;
typedef int mbuf_t ;
typedef scalar_t__ errno_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTSUP ;
 int NSTAT_FILTER_SUPPRESS_SRC_ADDED ;
 int NSTAT_FLAG_SUPPORTS_UPDATES ;
 int NSTAT_PROVIDER_LAST ;
 int PRIV_NET_PRIVILEGED_NETWORK_STATISTICS ;
 int kauth_cred_get () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 TYPE_3__* mbuf_data (int ) ;
 int mbuf_len (int ) ;
 int nstat_enqueue_success (int ,TYPE_4__*,int ) ;
 TYPE_2__* nstat_find_provider_by_id (int ) ;
 scalar_t__ nstat_privcheck ;
 scalar_t__ priv_check_cred (int ,int ,int ) ;
 scalar_t__ stub1 (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static errno_t
nstat_control_handle_add_all(
 nstat_control_state *state,
 mbuf_t m)
{
 errno_t result = 0;


 if (mbuf_len(m) < sizeof(nstat_msg_add_all_srcs))
 {
  return EINVAL;
 }

 nstat_msg_add_all_srcs *req = mbuf_data(m);
 if (req->provider > NSTAT_PROVIDER_LAST) return ENOENT;

 nstat_provider *provider = nstat_find_provider_by_id(req->provider);

 if (!provider) return ENOENT;
 if (provider->nstat_watcher_add == ((void*)0)) return ENOTSUP;

 if (nstat_privcheck != 0) {
  result = priv_check_cred(kauth_cred_get(),
      PRIV_NET_PRIVILEGED_NETWORK_STATISTICS, 0);
  if (result != 0)
   return result;
 }

 lck_mtx_lock(&state->ncs_mtx);
 if (req->filter & NSTAT_FILTER_SUPPRESS_SRC_ADDED)
 {

  state->ncs_flags |= NSTAT_FLAG_SUPPORTS_UPDATES;
 }
 lck_mtx_unlock(&state->ncs_mtx);






 result = provider->nstat_watcher_add(state, req);

 if (result == 0)
  nstat_enqueue_success(req->hdr.context, state, 0);

 return result;
}
