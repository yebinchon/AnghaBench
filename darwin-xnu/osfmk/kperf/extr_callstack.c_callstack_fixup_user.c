
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int x86_saved_state_t ;
typedef int user_addr_t ;
typedef unsigned long long uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ thread_t ;
struct callstack {scalar_t__ nframes; unsigned long long* frames; } ;
struct arm_saved_state {int dummy; } ;
struct TYPE_6__ {int uesp; } ;
struct TYPE_4__ {int rsp; } ;
struct TYPE_5__ {TYPE_1__ isf; } ;


 scalar_t__ MAX_CALLSTACK_FRAMES ;
 int PSR_TF ;
 int assert (int) ;
 int copyin (int ,char*,int) ;
 scalar_t__ current_thread () ;
 int get_saved_state_cpsr (struct arm_saved_state*) ;
 unsigned long long get_saved_state_lr (struct arm_saved_state*) ;
 int get_task_map (int ) ;
 int get_threadtask (scalar_t__) ;
 void* get_user_regs (scalar_t__) ;
 int is_saved_state64 (int *) ;
 TYPE_3__* saved_state32 (int *) ;
 TYPE_2__* saved_state64 (int *) ;
 int vm_map_read_user (int ,int ,unsigned long long*,int) ;

__attribute__((used)) static void
callstack_fixup_user(struct callstack *cs, thread_t thread)
{
 uint64_t fixup_val = 0;
 assert(cs->nframes < MAX_CALLSTACK_FRAMES);


 user_addr_t sp_user;
 bool user_64;
 x86_saved_state_t *state;

 state = get_user_regs(thread);
 if (!state) {
  goto out;
 }

 user_64 = is_saved_state64(state);
 if (user_64) {
     sp_user = saved_state64(state)->isf.rsp;
 } else {
  sp_user = saved_state32(state)->uesp;
 }

 if (thread == current_thread()) {
  (void)copyin(sp_user, (char *)&fixup_val,
   user_64 ? sizeof(uint64_t) : sizeof(uint32_t));
 } else {
  (void)vm_map_read_user(get_task_map(get_threadtask(thread)), sp_user,
   &fixup_val, user_64 ? sizeof(uint64_t) : sizeof(uint32_t));
 }
out:
 cs->frames[cs->nframes++] = fixup_val;
}
