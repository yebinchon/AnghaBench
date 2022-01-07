
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int dummy; } ;
struct knote {scalar_t__* kn_ext; scalar_t__ kn_hook; } ;
typedef scalar_t__ ipc_port_t ;


 int PORT_SYNC_LINK_NO_LINKAGE ;
 int PORT_SYNC_LINK_WORKLOOP_KNOTE ;
 int PORT_SYNC_LINK_WORKLOOP_STASH ;
 struct turnstile* filt_machport_kqueue_turnstile (struct knote*) ;
 int ip_reference (scalar_t__) ;

struct turnstile *
filt_machport_stash_port(struct knote *kn, ipc_port_t port, int *link)
{
 struct turnstile *ts = filt_machport_kqueue_turnstile(kn);

 if (!ts) {
  if (link) *link = PORT_SYNC_LINK_NO_LINKAGE;
 } else if (kn->kn_ext[3] == 0) {
  ip_reference(port);
  kn->kn_ext[3] = (uintptr_t)port;
  if (link) *link = PORT_SYNC_LINK_WORKLOOP_KNOTE;
 } else {
  ts = (struct turnstile *)kn->kn_hook;
  if (link) *link = PORT_SYNC_LINK_WORKLOOP_STASH;
 }

 return ts;
}
