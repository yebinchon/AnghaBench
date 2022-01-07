
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* mk_timer_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_11__ {scalar_t__ ip_kobject; } ;
struct TYPE_10__ {scalar_t__ active; int lock; int is_dead; int is_armed; int call_entry; TYPE_2__* port; } ;


 int FALSE ;
 int IKOT_NONE ;
 scalar_t__ IKOT_TIMER ;
 int IKO_NULL ;
 int TRUE ;
 int assert (int) ;
 scalar_t__ ip_kotype (TYPE_2__*) ;
 int ip_lock (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 int ipc_kobject_set_atomically (TYPE_2__*,int ,int ) ;
 int ipc_port_release_send (TYPE_2__*) ;
 int mk_timer_zone ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 scalar_t__ thread_call_cancel (int *) ;
 int zfree (int ,TYPE_1__*) ;

void
mk_timer_port_destroy(
 ipc_port_t port)
{
 mk_timer_t timer = ((void*)0);

 ip_lock(port);
 if (ip_kotype(port) == IKOT_TIMER) {
  timer = (mk_timer_t)port->ip_kobject;
  assert(timer != ((void*)0));
  ipc_kobject_set_atomically(port, IKO_NULL, IKOT_NONE);
  simple_lock(&timer->lock);
  assert(timer->port == port);
 }
 ip_unlock(port);

 if (timer != ((void*)0)) {
  if (thread_call_cancel(&timer->call_entry))
   timer->active--;
  timer->is_armed = FALSE;

  timer->is_dead = TRUE;
  if (timer->active == 0) {
   simple_unlock(&timer->lock);
   zfree(mk_timer_zone, timer);

   ipc_port_release_send(port);
   return;
  }

  simple_unlock(&timer->lock);
 }
}
