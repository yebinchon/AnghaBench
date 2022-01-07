
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ifnet {int dummy; } ;
struct dlil_threading_info {scalar_t__ input_thr; int input_waiting; int input_lck; struct ifnet* ifp; } ;
typedef int caddr_t ;


 int DLIL_INPUT_TERMINATE ;
 int DLIL_INPUT_TERMINATE_COMPLETE ;
 int OSAddAtomic (int,int *) ;
 int VERIFY (int) ;
 int cur_dlil_input_threads ;
 scalar_t__ current_thread () ;
 struct dlil_threading_info* dlil_main_input_thread ;
 scalar_t__ dlil_verbose ;
 int if_input_thread_termination_spin ;
 char* if_name (struct ifnet*) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int printf (char*,...) ;
 int thread_deallocate (scalar_t__) ;
 int thread_terminate (scalar_t__) ;
 int wakeup_one (int ) ;

__attribute__((used)) static void
dlil_terminate_input_thread(struct dlil_threading_info *inp)
{
 struct ifnet *ifp = inp->ifp;

 VERIFY(current_thread() == inp->input_thr);
 VERIFY(inp != dlil_main_input_thread);

 OSAddAtomic(-1, &cur_dlil_input_threads);
 lck_mtx_lock_spin(&inp->input_lck);
 VERIFY((inp->input_waiting & DLIL_INPUT_TERMINATE) != 0);
 inp->input_waiting |= DLIL_INPUT_TERMINATE_COMPLETE;
 wakeup_one((caddr_t)&inp->input_waiting);
 lck_mtx_unlock(&inp->input_lck);


 thread_deallocate(current_thread());

 if (dlil_verbose) {
  printf("%s: input thread terminated\n",
      if_name(ifp));
 }


 thread_terminate(current_thread());

}
