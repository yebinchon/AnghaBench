
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct turnstile {int dummy; } ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_7__ {scalar_t__ ts_port_ref; } ;
struct TYPE_6__ {int ip_messages; } ;


 struct turnstile* TURNSTILE_NULL ;
 int assert (int) ;
 int imq_lock (int *) ;
 int imq_unlock (int *) ;
 TYPE_3__* port_send_turnstile (TYPE_1__*) ;
 int port_send_turnstile_address (TYPE_1__*) ;
 int turnstile_cleanup () ;
 int turnstile_complete (uintptr_t,int ,struct turnstile**) ;
 int turnstile_deallocate_safe (struct turnstile*) ;

void
ipc_port_send_turnstile_complete(ipc_port_t port)
{
 struct turnstile *turnstile = TURNSTILE_NULL;


 imq_lock(&port->ip_messages);

 port_send_turnstile(port)->ts_port_ref--;
 if (port_send_turnstile(port)->ts_port_ref == 0) {
  turnstile_complete((uintptr_t)port, port_send_turnstile_address(port),
    &turnstile);
  assert(turnstile != TURNSTILE_NULL);
 }
 imq_unlock(&port->ip_messages);
 turnstile_cleanup();

 if (turnstile != TURNSTILE_NULL) {
  turnstile_deallocate_safe(turnstile);
  turnstile = TURNSTILE_NULL;
 }
}
