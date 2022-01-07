
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_get_counters_remote {int buf_stride; int nb_counters; int * buf; int classes; } ;
typedef int event_t ;


 int assert (int ) ;
 int cpu_number () ;
 int hw_atomic_add (int *,int) ;
 scalar_t__ hw_atomic_sub (int *,int) ;
 int kpc_get_curcpu_counters (int ,int *,int *) ;
 int kpc_xread_sync ;
 int thread_wakeup (int ) ;

__attribute__((used)) static void
kpc_get_curcpu_counters_xcall(void *args)
{
 struct kpc_get_counters_remote *handler = args;

 assert(handler != ((void*)0));
 assert(handler->buf != ((void*)0));

 int offset = cpu_number() * handler->buf_stride;
 int r = kpc_get_curcpu_counters(handler->classes, ((void*)0), &handler->buf[offset]);


 hw_atomic_add(&(handler->nb_counters), r);

 if (hw_atomic_sub(&kpc_xread_sync, 1) == 0) {
  thread_wakeup((event_t) &kpc_xread_sync);
 }
}
