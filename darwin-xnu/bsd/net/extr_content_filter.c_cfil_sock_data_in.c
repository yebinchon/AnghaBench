
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct socket {int so_flags; TYPE_2__* so_cfil; } ;
struct sockaddr {int dummy; } ;
struct mbuf {scalar_t__ m_type; } ;
struct TYPE_4__ {int cfi_flags; } ;
struct TYPE_3__ {int cfs_data_in_oob; int cfs_data_in_control; } ;


 int CFIF_DROP ;
 int CFIL_LOG (int ,char*,int ) ;
 int EPIPE ;
 int FALSE ;
 scalar_t__ IS_UDP (struct socket*) ;
 int LOG_ERR ;
 scalar_t__ MT_OOBDATA ;
 int OSIncrementAtomic (int *) ;
 int SOF_CONTENT_FILTER ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int cfil_data_common (struct socket*,TYPE_2__*,int ,struct sockaddr*,struct mbuf*,struct mbuf*,int ) ;
 int cfil_sock_udp_handle_data (int ,struct socket*,int *,struct sockaddr*,struct mbuf*,struct mbuf*,int ) ;
 TYPE_1__ cfil_stats ;
 int socket_lock_assert_owned (struct socket*) ;

int
cfil_sock_data_in(struct socket *so, struct sockaddr *from,
 struct mbuf *data, struct mbuf *control, uint32_t flags)
{
 int error = 0;

 if (IS_UDP(so)) {
        return (cfil_sock_udp_handle_data(FALSE, so, ((void*)0), from, data, control, flags));
    }

 if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == ((void*)0))
  return (0);

 socket_lock_assert_owned(so);

 if (so->so_cfil->cfi_flags & CFIF_DROP) {
  CFIL_LOG(LOG_ERR, "so %llx drop set",
   (uint64_t)VM_KERNEL_ADDRPERM(so));
  return (EPIPE);
 }
 if (control != ((void*)0)) {
  CFIL_LOG(LOG_ERR, "so %llx control",
   (uint64_t)VM_KERNEL_ADDRPERM(so));
  OSIncrementAtomic(&cfil_stats.cfs_data_in_control);
 }
 if (data->m_type == MT_OOBDATA) {
  CFIL_LOG(LOG_ERR, "so %llx MSG_OOB",
   (uint64_t)VM_KERNEL_ADDRPERM(so));
  OSIncrementAtomic(&cfil_stats.cfs_data_in_oob);
 }
 error = cfil_data_common(so, so->so_cfil, 0, from, data, control, flags);

 return (error);
}
