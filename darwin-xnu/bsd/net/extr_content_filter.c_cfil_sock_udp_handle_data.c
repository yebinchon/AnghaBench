
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct mbuf {scalar_t__ m_type; } ;
struct cfil_info {int cfi_flags; } ;
struct cfil_hash_entry {struct cfil_info* cfentry_cfil; int cfentry_lastused; } ;
typedef int errno_t ;
struct TYPE_2__ {int cfs_data_in_oob; int cfs_data_in_control; int cfs_sock_userspace_only; int cfs_sock_attach_in_vain; } ;


 int CFIF_DROP ;
 int CFIL_LOG (int ,char*,...) ;
 int EPIPE ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 scalar_t__ MT_OOBDATA ;
 int NECP_MASK_USERSPACE_ONLY ;
 int OSIncrementAtomic (int *) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 scalar_t__ cfil_active_count ;
 int cfil_data_common (struct socket*,struct cfil_info*,int,struct sockaddr*,struct mbuf*,struct mbuf*,int) ;
 int cfil_hash_entry_log (int ,struct socket*,struct cfil_hash_entry*,int ,char*) ;
 struct cfil_hash_entry* cfil_sock_udp_get_flow (struct socket*,int,int,struct sockaddr*,struct sockaddr*) ;
 TYPE_1__ cfil_stats ;
 int necp_socket_get_content_filter_control_unit (struct socket*) ;
 int net_uptime () ;
 int socket_lock_assert_owned (struct socket*) ;

errno_t
cfil_sock_udp_handle_data(bool outgoing, struct socket *so,
                          struct sockaddr *local, struct sockaddr *remote,
                          struct mbuf *data, struct mbuf *control, uint32_t flags)
{
#pragma unused(outgoing, so, local, remote, data, control, flags)
 errno_t error = 0;
    uint32_t filter_control_unit;
 struct cfil_hash_entry *hash_entry = ((void*)0);
 struct cfil_info *cfil_info = ((void*)0);

    socket_lock_assert_owned(so);

    if (cfil_active_count == 0) {
        CFIL_LOG(LOG_DEBUG, "CFIL: UDP no active filter");
        OSIncrementAtomic(&cfil_stats.cfs_sock_attach_in_vain);
        return (error);
    }

    filter_control_unit = necp_socket_get_content_filter_control_unit(so);
    if (filter_control_unit == 0) {
        CFIL_LOG(LOG_DEBUG, "CFIL: UDP failed to get control unit");
        return (error);
    }

    if ((filter_control_unit & NECP_MASK_USERSPACE_ONLY) != 0) {
        CFIL_LOG(LOG_DEBUG, "CFIL: UDP user space only");
        OSIncrementAtomic(&cfil_stats.cfs_sock_userspace_only);
        return (error);
    }

    hash_entry = cfil_sock_udp_get_flow(so, filter_control_unit, outgoing, local, remote);
    if (hash_entry == ((void*)0) || hash_entry->cfentry_cfil == ((void*)0)) {
  CFIL_LOG(LOG_ERR, "CFIL: Falied to create UDP flow");
        return (EPIPE);
    }

 hash_entry->cfentry_lastused = net_uptime();
 cfil_info = hash_entry->cfentry_cfil;

 if (cfil_info->cfi_flags & CFIF_DROP) {



  return (EPIPE);
 }
 if (control != ((void*)0)) {
  OSIncrementAtomic(&cfil_stats.cfs_data_in_control);
 }
 if (data->m_type == MT_OOBDATA) {
  CFIL_LOG(LOG_ERR, "so %llx MSG_OOB",
     (uint64_t)VM_KERNEL_ADDRPERM(so));
  OSIncrementAtomic(&cfil_stats.cfs_data_in_oob);
 }

 error = cfil_data_common(so, cfil_info, outgoing, remote, data, control, flags);

 return (error);
}
