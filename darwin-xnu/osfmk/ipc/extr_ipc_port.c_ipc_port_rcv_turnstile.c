
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct turnstile {int dummy; } ;
typedef scalar_t__ ipc_port_t ;


 struct turnstile* turnstile_lookup_by_proprietor (uintptr_t) ;

struct turnstile *
ipc_port_rcv_turnstile(ipc_port_t port)
{
 return turnstile_lookup_by_proprietor((uintptr_t)port);
}
