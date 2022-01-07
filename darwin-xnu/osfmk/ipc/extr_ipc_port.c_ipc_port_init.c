
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef int ipc_space_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_4__ {int ip_messages; int ip_send_turnstile; int ip_sync_link_state; scalar_t__ ip_specialreply; scalar_t__ ip_impcount; scalar_t__ ip_strict_guard; scalar_t__ ip_guarded; scalar_t__ ip_tempowner; scalar_t__ ip_impdonation; scalar_t__ ip_spimportant; scalar_t__ ip_sprequests; scalar_t__ ip_context; int ip_premsg; int ip_requests; void* ip_pdrequest; void* ip_nsrequest; scalar_t__ ip_sorights; scalar_t__ ip_srights; scalar_t__ ip_mscount; int ip_receiver_name; int ip_receiver; } ;


 int FALSE ;
 int IKM_NULL ;
 int IPR_NULL ;
 void* IP_NULL ;
 int PORT_SYNC_LINK_ANY ;
 int TURNSTILE_NULL ;
 int ipc_mqueue_init (int *,int ) ;
 int reset_ip_srp_bits (TYPE_1__*) ;

void
ipc_port_init(
 ipc_port_t port,
 ipc_space_t space,
 mach_port_name_t name)
{


 port->ip_receiver = space;
 port->ip_receiver_name = name;

 port->ip_mscount = 0;
 port->ip_srights = 0;
 port->ip_sorights = 0;

 port->ip_nsrequest = IP_NULL;
 port->ip_pdrequest = IP_NULL;
 port->ip_requests = IPR_NULL;

 port->ip_premsg = IKM_NULL;
 port->ip_context = 0;

 port->ip_sprequests = 0;
 port->ip_spimportant = 0;
 port->ip_impdonation = 0;
 port->ip_tempowner = 0;

 port->ip_guarded = 0;
 port->ip_strict_guard = 0;
 port->ip_impcount = 0;

 port->ip_specialreply = 0;
 port->ip_sync_link_state = PORT_SYNC_LINK_ANY;

 reset_ip_srp_bits(port);

 port->ip_send_turnstile = TURNSTILE_NULL;

 ipc_mqueue_init(&port->ip_messages,
   FALSE );
}
