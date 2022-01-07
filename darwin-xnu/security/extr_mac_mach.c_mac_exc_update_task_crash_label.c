
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task {int dummy; } ;
struct label {int dummy; } ;


 int MAC_CHECK (int ,int *,struct label*,struct label*) ;
 int assert (int) ;
 int exc_action_label_update ;
 struct label* get_task_crash_label (struct task*) ;
 struct task* kernel_task ;

int mac_exc_update_task_crash_label(struct task *task, struct label *label) {
 int error;

 assert(task != kernel_task);

 struct label *crash_label = get_task_crash_label(task);

 MAC_CHECK(exc_action_label_update, ((void*)0), crash_label, label);

 return (error);
}
