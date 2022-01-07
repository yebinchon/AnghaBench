
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ipc_port_t ;
typedef TYPE_2__* ipc_kmsg_t ;
typedef scalar_t__ ipc_importance_elem_t ;
struct TYPE_6__ {scalar_t__ ikm_importance; TYPE_1__* ikm_header; } ;
struct TYPE_5__ {int msgh_remote_port; int msgh_bits; } ;


 scalar_t__ FALSE ;
 scalar_t__ IIE_NULL ;
 int IPID_OPTION_NORMAL ;
 scalar_t__ IP_VALID (int ) ;
 scalar_t__ MACH_MSGH_BITS_RAISED_IMPORTANCE (int ) ;
 int MACH_MSGH_BITS_RAISEIMP ;
 int assert (int) ;
 int ip_active (int ) ;
 int ip_lock (int ) ;
 int ip_unlock (int ) ;
 scalar_t__ ipc_importance_kmsg_unlink (TYPE_2__*) ;
 int ipc_importance_lock () ;
 int ipc_importance_release_locked (scalar_t__) ;
 scalar_t__ ipc_port_importance_delta (int ,int ,int) ;

void
ipc_importance_clean(
 ipc_kmsg_t kmsg)
{
 ipc_port_t port;


 if (IIE_NULL != kmsg->ikm_importance) {
  ipc_importance_elem_t elem;

  ipc_importance_lock();
  elem = ipc_importance_kmsg_unlink(kmsg);
  assert(IIE_NULL != elem);
  ipc_importance_release_locked(elem);

 }


 if (MACH_MSGH_BITS_RAISED_IMPORTANCE(kmsg->ikm_header->msgh_bits)) {
  kmsg->ikm_header->msgh_bits &= ~MACH_MSGH_BITS_RAISEIMP;
  port = kmsg->ikm_header->msgh_remote_port;
  if (IP_VALID(port)) {
   ip_lock(port);

   if (!ip_active(port) ||
       ipc_port_importance_delta(port, IPID_OPTION_NORMAL, -1) == FALSE) {
    ip_unlock(port);
   }
  }
 }
}
