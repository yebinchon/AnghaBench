
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_rendezvous (int ,void (*) (void*),int ,void*) ;
 int setup_disable_intrs ;
 int teardown_restore_intrs ;

void
mp_rendezvous_no_intrs(
       void (*action_func)(void *),
       void *arg)
{
 mp_rendezvous(setup_disable_intrs,
        action_func,
        teardown_restore_intrs,
        arg);
}
