
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
struct proc {int dummy; } ;
struct label {int dummy; } ;
struct exception_action {int label; } ;


 int EPERM ;
 int MAC_CHECK (int ,struct label*,struct exception_action*,int ) ;
 int MAC_MACH_UNEXPECTED (char*) ;
 int exc_action_check_exception_send ;
 struct proc* get_bsdtask_info (struct task*) ;
 struct label* get_task_crash_label (struct task*) ;
 struct label* mac_exc_create_label_for_proc (struct proc*) ;
 int mac_exc_free_label (struct label*) ;

int
mac_exc_action_check_exception_send(struct task *victim_task, struct exception_action *action)
{
 int error = 0;

 struct proc *p = get_bsdtask_info(victim_task);
 struct label *bsd_label = ((void*)0);
 struct label *label = ((void*)0);

 if (p != ((void*)0)) {

  label = bsd_label = mac_exc_create_label_for_proc(p);
 } else {

  label = get_task_crash_label(victim_task);
 }

 if (label == ((void*)0)) {
  MAC_MACH_UNEXPECTED("mac_exc_action_check_exception_send: no exc_action label for process");
  return EPERM;
 }

 MAC_CHECK(exc_action_check_exception_send, label, action, action->label);

 if (bsd_label != ((void*)0)) {
  mac_exc_free_label(bsd_label);
 }

 return (error);
}
