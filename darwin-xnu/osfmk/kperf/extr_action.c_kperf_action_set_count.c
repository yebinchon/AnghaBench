
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct action {int pid_filter; void* kcallstack_depth; void* ucallstack_depth; } ;


 unsigned int ACTION_MAX ;
 int EINVAL ;
 int ENOMEM ;
 void* MAX_CALLSTACK_FRAMES ;
 int VM_KERN_MEMORY_DIAG ;
 unsigned int actionc ;
 struct action* actionv ;
 struct action* kalloc_tag (unsigned int,int ) ;
 int kfree (struct action*,unsigned int) ;
 int kperf_init () ;
 int memcpy (struct action*,struct action*,unsigned int) ;
 int memset (struct action*,int ,unsigned int) ;

int
kperf_action_set_count(unsigned count)
{
 struct action *new_actionv = ((void*)0), *old_actionv = ((void*)0);
 unsigned old_count;


 if (count == actionc) {
  return 0;
 }


 if (count < actionc) {
  return EINVAL;
 }


 if (count > ACTION_MAX) {
  return EINVAL;
 }




 if (actionc == 0) {
  int r;
  if ((r = kperf_init())) {
   return r;
  }
 }


 new_actionv = kalloc_tag(count * sizeof(*new_actionv), VM_KERN_MEMORY_DIAG);
 if (new_actionv == ((void*)0)) {
  return ENOMEM;
 }

 old_actionv = actionv;
 old_count = actionc;

 if (old_actionv != ((void*)0)) {
  memcpy(new_actionv, actionv, actionc * sizeof(*actionv));
 }

 memset(&(new_actionv[actionc]), 0, (count - old_count) * sizeof(*actionv));

 for (unsigned int i = old_count; i < count; i++) {
  new_actionv[i].pid_filter = -1;
  new_actionv[i].ucallstack_depth = MAX_CALLSTACK_FRAMES;
  new_actionv[i].kcallstack_depth = MAX_CALLSTACK_FRAMES;
 }

 actionv = new_actionv;
 actionc = count;

 if (old_actionv != ((void*)0)) {
  kfree(old_actionv, old_count * sizeof(*actionv));
 }

 return 0;
}
