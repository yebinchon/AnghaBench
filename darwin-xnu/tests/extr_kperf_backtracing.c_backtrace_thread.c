
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dispatch_semaphore_t ;


 int DISPATCH_TIME_FOREVER ;
 int RECURSE_START_OFFSET ;
 int T_LOG (char*,unsigned int,int) ;
 int USER_FRAMES ;
 int backtrace_go ;
 int backtrace_started ;
 int dispatch_semaphore_signal (int ) ;
 int dispatch_semaphore_wait (int ,int ) ;
 int recurse_a (scalar_t__,unsigned int) ;

__attribute__((used)) static void *
backtrace_thread(void *arg)
{
    dispatch_semaphore_t notify_spinning;
    unsigned int calls;

    notify_spinning = (dispatch_semaphore_t)arg;

    dispatch_semaphore_signal(backtrace_started);
    if (!notify_spinning) {
        dispatch_semaphore_wait(backtrace_go, DISPATCH_TIME_FOREVER);
    }






    calls = USER_FRAMES - RECURSE_START_OFFSET - 1 ;
    if (notify_spinning) {



        calls -= 1;
    }

    T_LOG("backtrace thread calling into %d frames (already at %d frames)",
        calls, RECURSE_START_OFFSET);
    (void)recurse_a(notify_spinning, calls);
    return ((void*)0);
}
