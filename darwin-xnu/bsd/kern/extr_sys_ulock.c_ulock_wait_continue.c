
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wait_result_t ;
typedef TYPE_3__* uthread_t ;
struct TYPE_10__ {int ull_turnstile; } ;
typedef TYPE_4__ ull_t ;
typedef int uint ;
typedef int thread_t ;
typedef int int32_t ;
struct TYPE_7__ {int* retval; int flags; int old_owner; int owner_thread; } ;
struct TYPE_8__ {TYPE_1__ uus_ulock_wait_data; } ;
struct TYPE_9__ {TYPE_2__ uu_save; } ;


 int ULF_NO_ERRNO ;
 int current_thread () ;
 int get_bsdthread_info (int ) ;
 int turnstile_complete (uintptr_t,int *,int *) ;
 int ull_lock (TYPE_4__*) ;
 int ulock_wait_cleanup (TYPE_4__*,int ,int ,int*) ;
 int unix_syscall_return (int) ;
 int wait_result_to_return_code (int ) ;

__attribute__((used)) __attribute__((noreturn))
static void
ulock_wait_continue(void * parameter, wait_result_t wr)
{
 thread_t self = current_thread();
 uthread_t uthread = (uthread_t)get_bsdthread_info(self);
 int ret = 0;

 ull_t *ull = (ull_t *)parameter;
 int32_t *retval = uthread->uu_save.uus_ulock_wait_data.retval;
 uint flags = uthread->uu_save.uus_ulock_wait_data.flags;
 thread_t owner_thread = uthread->uu_save.uus_ulock_wait_data.owner_thread;
 thread_t old_owner = uthread->uu_save.uus_ulock_wait_data.old_owner;

 ret = wait_result_to_return_code(wr);

 ull_lock(ull);
 turnstile_complete((uintptr_t)ull, &ull->ull_turnstile, ((void*)0));

 ulock_wait_cleanup(ull, owner_thread, old_owner, retval);

 if ((flags & ULF_NO_ERRNO) && (ret != 0)) {
  *retval = -ret;
  ret = 0;
 }

 unix_syscall_return(ret);
}
