
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int thread_t ;
struct uthread {int * uu_kqr_bound; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_3__ {int p_flag; int p_pid; } ;


 int P_LP64 ;
 int R2K_WORKLOOP_PENDING_EVENTS ;
 int assert (int) ;
 scalar_t__ copyout (void*,int ,size_t) ;
 int current_thread () ;
 struct uthread* get_bsdthread_info (int ) ;
 int printf (char*,int,int ,int) ;
 int thread_rettokern_addr (int ) ;
 int thread_tid (int ) ;

__attribute__((used)) static void
kevent_set_return_to_kernel_user_tsd(proc_t p, thread_t thread)
{
 uint64_t ast_addr;
 bool proc_is_64bit = !!(p->p_flag & P_LP64);
 size_t user_addr_size = proc_is_64bit ? 8 : 4;
 uint32_t ast_flags32 = 0;
 uint64_t ast_flags64 = 0;
 struct uthread *ut = get_bsdthread_info(thread);

 if (ut->uu_kqr_bound != ((void*)0)) {
  ast_flags64 |= R2K_WORKLOOP_PENDING_EVENTS;
 }

 if (ast_flags64 == 0) {
  return;
 }

 if (!(p->p_flag & P_LP64)) {
  ast_flags32 = (uint32_t)ast_flags64;
  assert(ast_flags64 < 0x100000000ull);
 }

 ast_addr = thread_rettokern_addr(thread);
 if (ast_addr == 0) {
  return;
 }

 if (copyout((proc_is_64bit ? (void *)&ast_flags64 : (void *)&ast_flags32),
             (user_addr_t)ast_addr,
             user_addr_size) != 0) {
  printf("pid %d (tid:%llu): copyout of return_to_kernel ast flags failed with "
         "ast_addr = %llu\n", p->p_pid, thread_tid(current_thread()), ast_addr);
 }
}
