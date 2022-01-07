
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct arm_saved_state {int dummy; } ;
typedef struct arm_saved_state x86_saved_state_t ;
typedef int * vm_map_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_6__ {uintptr_t eip; uintptr_t ebp; } ;
struct TYPE_4__ {uintptr_t rip; } ;
struct TYPE_5__ {uintptr_t rbp; TYPE_1__ isf; } ;


 int EINVAL ;
 scalar_t__ INVALID_USER_FP (uintptr_t) ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int copyin (scalar_t__,char*,size_t) ;
 void* current_thread () ;
 uintptr_t get_saved_state_fp (struct arm_saved_state*) ;
 uintptr_t get_saved_state_pc (struct arm_saved_state*) ;
 int * get_task_map_reference (int ) ;
 int get_threadtask (void*) ;
 struct arm_saved_state* get_user_regs (void*) ;
 int is_saved_state64 (struct arm_saved_state*) ;
 scalar_t__ ml_get_interrupts_enabled () ;
 TYPE_3__* saved_state32 (struct arm_saved_state*) ;
 TYPE_2__* saved_state64 (struct arm_saved_state*) ;
 int vm_map_deallocate (int *) ;
 int * vm_map_switch (int *) ;

int
backtrace_thread_user(void *thread, uintptr_t *bt, uint32_t max_frames,
 uint32_t *frames_out, bool *user_64_out)
{
 bool user_64;
 uintptr_t pc, fp, next_fp;
 vm_map_t map = ((void*)0), old_map = ((void*)0);
 uint32_t frame_index = 0;
 int err = 0;
 size_t frame_size;

 assert(bt != ((void*)0));
 assert(max_frames > 0);
 assert(frames_out != ((void*)0));
 assert(user_64_out != ((void*)0));






 x86_saved_state_t *state = get_user_regs(thread);

 if (!state) {
  return EINVAL;
 }

 user_64 = is_saved_state64(state);
 if (user_64) {
  pc = saved_state64(state)->isf.rip;
  fp = saved_state64(state)->rbp;
 } else {
  pc = saved_state32(state)->eip;
  fp = saved_state32(state)->ebp;
 }
 if (max_frames == 0) {
  goto out;
 }

 bt[frame_index++] = pc;

 if (frame_index >= max_frames) {
  goto out;
 }

 if (((fp) == 0 || !IS_USERADDR64_CANONICAL((fp)))) {
  goto out;
 }

 assert(ml_get_interrupts_enabled() == TRUE);
 if (!ml_get_interrupts_enabled()) {
  return EINVAL;
 }

 union {
  struct {
   uint64_t fp;
   uint64_t ret;
  } u64;
  struct {
   uint32_t fp;
   uint32_t ret;
  } u32;
 } frame;

 frame_size = 2 * (user_64 ? sizeof(uint64_t) : sizeof(uint32_t));


 if (thread != current_thread()) {
  map = get_task_map_reference(get_threadtask(thread));
  if (map == ((void*)0)) {
   return EINVAL;
  }
  old_map = vm_map_switch(map);
 } else {
  map = ((void*)0);
 }

 while (fp != 0 && frame_index < max_frames) {
  err = copyin(fp, (char *)&frame, frame_size);
  if (err) {
   goto out;
  }

  next_fp = user_64 ? frame.u64.fp : frame.u32.fp;

  if (((next_fp) == 0 || !IS_USERADDR64_CANONICAL((next_fp)))) {
   break;
  }

  uintptr_t ret_addr = user_64 ? frame.u64.ret : frame.u32.ret;
  bt[frame_index++] = ret_addr;


  if (next_fp <= fp) {
   break;
  }
  fp = next_fp;
 }

out:
 if (map) {
  (void)vm_map_switch(old_map);
  vm_map_deallocate(map);
 }

 *user_64_out = user_64;
 *frames_out = frame_index;
 return err;

}
