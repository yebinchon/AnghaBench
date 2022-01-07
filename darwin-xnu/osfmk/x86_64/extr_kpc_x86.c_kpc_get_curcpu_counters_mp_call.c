
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_get_counters_remote {int buf_stride; int nb_counters; struct kpc_get_counters_remote* buf; int classes; } ;


 int assert (struct kpc_get_counters_remote*) ;
 int cpu_number () ;
 int hw_atomic_add (int *,int) ;
 int kpc_get_curcpu_counters (int ,int *,struct kpc_get_counters_remote*) ;

__attribute__((used)) static void
kpc_get_curcpu_counters_mp_call(void *args)
{
 struct kpc_get_counters_remote *handler = args;
 int offset=0, r=0;

 assert(handler);
 assert(handler->buf);

 offset = cpu_number() * handler->buf_stride;
 r = kpc_get_curcpu_counters(handler->classes, ((void*)0), &handler->buf[offset]);


 hw_atomic_add(&(handler->nb_counters), r);
}
