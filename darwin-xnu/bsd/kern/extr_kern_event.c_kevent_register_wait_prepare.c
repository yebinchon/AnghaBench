
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
struct TYPE_4__ {struct knote* knote; } ;
struct TYPE_5__ {TYPE_1__ uus_kevent_register; } ;
struct uthread {TYPE_2__ uu_save; } ;
struct knote {scalar_t__ kn_hook; } ;
struct kevent_internal_s {int data; int flags; } ;
struct TYPE_6__ {int f_extended_codes; } ;


 int EV_ERROR ;
 int EXDEV ;
 int FILTER_REGISTER_WAIT ;
 int assert (int ) ;
 scalar_t__ current_thread () ;
 struct uthread* get_bsdthread_info (scalar_t__) ;
 TYPE_3__* knote_fops (struct knote*) ;
 int thread_reference (scalar_t__) ;

__attribute__((used)) static int
kevent_register_wait_prepare(struct knote *kn, struct kevent_internal_s *kev)
{
 thread_t thread = current_thread();
 struct uthread *uth = get_bsdthread_info(thread);

 assert(knote_fops(kn)->f_extended_codes);

 if (kn->kn_hook == ((void*)0)) {
  thread_reference(thread);
  kn->kn_hook = thread;
 } else if (kn->kn_hook != thread) {




  kev->flags |= EV_ERROR;
  kev->data = EXDEV;
  return 0;
 }

 uth->uu_save.uus_kevent_register.knote = kn;
 return FILTER_REGISTER_WAIT;
}
