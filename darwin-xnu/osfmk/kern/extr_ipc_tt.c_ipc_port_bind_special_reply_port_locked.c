
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_8__ {int ip_specialreply; int ip_sync_link_state; } ;
struct TYPE_7__ {TYPE_2__* ith_special_reply_port; } ;


 int PORT_SYNC_LINK_ANY ;
 int assert (int ) ;
 TYPE_1__* current_thread () ;
 int ip_reference (TYPE_2__*) ;
 int reset_ip_srp_bits (TYPE_2__*) ;

__attribute__((used)) static void
ipc_port_bind_special_reply_port_locked(
 ipc_port_t port)
{
 thread_t thread = current_thread();
 assert(thread->ith_special_reply_port == ((void*)0));

 ip_reference(port);
 thread->ith_special_reply_port = port;
 port->ip_specialreply = 1;
 port->ip_sync_link_state = PORT_SYNC_LINK_ANY;

 reset_ip_srp_bits(port);
}
