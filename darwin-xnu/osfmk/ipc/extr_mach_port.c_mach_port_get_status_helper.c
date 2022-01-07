
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mps_pset; int mps_srights; int mps_pdrequest; int mps_nsrequest; int mps_flags; int mps_sorights; int mps_mscount; int mps_msgcount; int mps_qlimit; int mps_seqno; } ;
typedef TYPE_1__ mach_port_status_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_9__ {int imq_msgcount; int imq_qlimit; int imq_seqno; } ;
struct TYPE_8__ {scalar_t__ ip_srights; scalar_t__ ip_pdrequest; scalar_t__ ip_nsrequest; scalar_t__ ip_imp_task; scalar_t__ ip_strict_guard; scalar_t__ ip_guarded; scalar_t__ ip_tempowner; scalar_t__ ip_impdonation; int ip_sorights; int ip_mscount; TYPE_5__ ip_messages; int ip_in_pset; } ;


 scalar_t__ IIT_NULL ;
 scalar_t__ IP_NULL ;
 int MACH_PORT_STATUS_FLAG_GUARDED ;
 int MACH_PORT_STATUS_FLAG_IMP_DONATION ;
 int MACH_PORT_STATUS_FLAG_STRICT_GUARD ;
 int MACH_PORT_STATUS_FLAG_TASKPTR ;
 int MACH_PORT_STATUS_FLAG_TEMPOWNER ;
 int imq_lock (TYPE_5__*) ;
 int imq_unlock (TYPE_5__*) ;

void mach_port_get_status_helper(
 ipc_port_t port,
 mach_port_status_t *statusp)
{
 imq_lock(&port->ip_messages);

 statusp->mps_pset = !!(port->ip_in_pset);
 statusp->mps_seqno = port->ip_messages.imq_seqno;
 statusp->mps_qlimit = port->ip_messages.imq_qlimit;
 statusp->mps_msgcount = port->ip_messages.imq_msgcount;
 imq_unlock(&port->ip_messages);

 statusp->mps_mscount = port->ip_mscount;
 statusp->mps_sorights = port->ip_sorights;
 statusp->mps_srights = port->ip_srights > 0;
 statusp->mps_pdrequest = port->ip_pdrequest != IP_NULL;
 statusp->mps_nsrequest = port->ip_nsrequest != IP_NULL;
 statusp->mps_flags = 0;
 if (port->ip_impdonation) {
  statusp->mps_flags |= MACH_PORT_STATUS_FLAG_IMP_DONATION;
  if (port->ip_tempowner) {
   statusp->mps_flags |= MACH_PORT_STATUS_FLAG_TEMPOWNER;
   if (IIT_NULL != port->ip_imp_task) {
    statusp->mps_flags |= MACH_PORT_STATUS_FLAG_TASKPTR;
   }
  }
 }
 if (port->ip_guarded) {
  statusp->mps_flags |= MACH_PORT_STATUS_FLAG_GUARDED;
  if (port->ip_strict_guard) {
   statusp->mps_flags |= MACH_PORT_STATUS_FLAG_STRICT_GUARD;
  }
 }
 return;
}
