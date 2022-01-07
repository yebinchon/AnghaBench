
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct turnstile {int dummy; } ;
struct knote {scalar_t__* kn_ext; struct turnstile* kn_hook; } ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_3__ {int ip_specialreply; scalar_t__ ip_sync_link_state; struct knote* ip_sync_inheritor_knote; } ;


 scalar_t__ PORT_SYNC_LINK_WORKLOOP_KNOTE ;
 int assert (int) ;
 int knote_get_kq (struct knote*) ;
 struct turnstile* kqueue_turnstile (int ) ;

struct turnstile *
filt_machport_stashed_special_reply_port_turnstile(ipc_port_t port)
{
 struct knote *kn = port->ip_sync_inheritor_knote;

 assert(port->ip_specialreply);
 assert(port->ip_sync_link_state == PORT_SYNC_LINK_WORKLOOP_KNOTE);
 if (kn->kn_ext[3] == (uint64_t)port) {
  return kqueue_turnstile(knote_get_kq(kn));
 }
 return kn->kn_hook;
}
