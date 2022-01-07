
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* ipc_port_t ;
typedef TYPE_2__* ipc_mqueue_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {scalar_t__ imq_seqno; } ;
struct TYPE_9__ {scalar_t__ ip_in_pset; TYPE_2__ ip_messages; scalar_t__ ip_strict_guard; scalar_t__ ip_guarded; scalar_t__ ip_context; scalar_t__ ip_mscount; } ;


 scalar_t__ FALSE ;
 int assert (int) ;
 int imq_lock (TYPE_2__*) ;
 int imq_unlock (TYPE_2__*) ;
 int ipc_mqueue_changed (TYPE_2__*) ;
 scalar_t__ ipc_mqueue_destroy_locked (TYPE_2__*) ;
 int ipc_pset_remove_from_all (TYPE_1__*) ;

boolean_t
ipc_port_clear_receiver(
 ipc_port_t port,
 boolean_t should_destroy)
{
 ipc_mqueue_t mqueue = &port->ip_messages;
 boolean_t reap_messages = FALSE;






 if (port->ip_in_pset != 0) {
  ipc_pset_remove_from_all(port);
  assert(port->ip_in_pset == 0);
 }





 imq_lock(mqueue);
 ipc_mqueue_changed(mqueue);
 port->ip_mscount = 0;
 mqueue->imq_seqno = 0;
 port->ip_context = port->ip_guarded = port->ip_strict_guard = 0;

 if (should_destroy) {







  reap_messages = ipc_mqueue_destroy_locked(mqueue);
 }

 imq_unlock(&port->ip_messages);

 return reap_messages;
}
