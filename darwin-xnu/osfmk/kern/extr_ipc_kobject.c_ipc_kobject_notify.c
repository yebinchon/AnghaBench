
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_22__ {int RetCode; } ;
typedef TYPE_2__ mig_reply_error_t ;
typedef int mach_port_mscount_t ;
struct TYPE_23__ {int not_count; } ;
typedef TYPE_3__ mach_no_senders_notification_t ;
struct TYPE_24__ {int msgh_sender; int msgh_audit; } ;
typedef TYPE_4__ mach_msg_max_trailer_t ;
struct TYPE_25__ {int msgh_id; int msgh_remote_port; scalar_t__ msgh_size; } ;
typedef TYPE_5__ mach_msg_header_t ;
typedef TYPE_6__* ipc_port_t ;
typedef int boolean_t ;
struct TYPE_21__ {int imq_seqno; } ;
struct TYPE_26__ {TYPE_1__ ip_messages; int ip_mscount; } ;


 int FALSE ;
 int KERNEL_AUDIT_TOKEN ;
 int KERNEL_SECURITY_TOKEN ;





 int MACH_PORT_NULL ;
 int MIG_NO_REPLY ;
 int TRUE ;
 int audit_session_nosenders (TYPE_5__*) ;
 scalar_t__ bcmp (int *,int *,int) ;
 int fileport_notify (TYPE_5__*) ;
 int iokit_notify (TYPE_5__*) ;
 int ip_kotype (TYPE_6__*) ;
 int ip_lock (TYPE_6__*) ;
 int ipc_port_destroy (TYPE_6__*) ;
 int ipc_voucher_attr_control_notify (TYPE_5__*) ;
 int ipc_voucher_notify (TYPE_5__*) ;
 int semaphore_notify (TYPE_5__*) ;
 int task_port_notify (TYPE_5__*) ;
 int task_suspension_notify (TYPE_5__*) ;
 int upl_no_senders (int ,int ) ;
 int work_interval_port_notify (TYPE_5__*) ;

boolean_t
ipc_kobject_notify(
 mach_msg_header_t *request_header,
 mach_msg_header_t *reply_header)
{
 mach_msg_max_trailer_t * trailer;
 ipc_port_t port = (ipc_port_t) request_header->msgh_remote_port;

 ((mig_reply_error_t *) reply_header)->RetCode = MIG_NO_REPLY;

 trailer = (mach_msg_max_trailer_t *)
           ((vm_offset_t)request_header + request_header->msgh_size);






 if (0 != bcmp(&trailer->msgh_audit, &KERNEL_AUDIT_TOKEN,
   sizeof(trailer->msgh_audit))) {
  return FALSE;
 }
 if (0 != bcmp(&trailer->msgh_sender, &KERNEL_SECURITY_TOKEN,
   sizeof(trailer->msgh_sender))) {
  return FALSE;
 }

 switch (request_header->msgh_id) {
  case 131:
   switch (ip_kotype(port)) {
   case 135:
    ipc_voucher_notify(request_header);
    return TRUE;

   case 134:
    ipc_voucher_attr_control_notify(request_header);
    return TRUE;

   case 139:
    semaphore_notify(request_header);
    return TRUE;

   case 138:
    task_port_notify(request_header);
    return TRUE;

   case 140:
    ip_lock(port);





    port->ip_mscount = 0;
    port->ip_messages.imq_seqno = 0;
    ipc_port_destroy(port);
    return TRUE;

   case 136:
    upl_no_senders(
     request_header->msgh_remote_port,
     (mach_port_mscount_t)
     ((mach_no_senders_notification_t *)
      request_header)->not_count);
    reply_header->msgh_remote_port = MACH_PORT_NULL;
    return TRUE;






   case 144:
    fileport_notify(request_header);
    return TRUE;

   case 133:
    work_interval_port_notify(request_header);
    return TRUE;

   }
  break;

  case 130:
  case 129:
  case 128:
  case 132:
  break;

  default:
  return FALSE;
 }
 switch (ip_kotype(port)) {
  case 137:
  {
   return task_suspension_notify(request_header);
  }

  default:
                return FALSE;
        }
}
