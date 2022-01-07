
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * thread_t ;
struct knote {int * kn_hook; } ;


 int thread_deallocate (int *) ;

__attribute__((used)) static void
kevent_register_wait_cleanup(struct knote *kn)
{
 thread_t thread = kn->kn_hook;
 kn->kn_hook = ((void*)0);
 thread_deallocate(thread);
}
