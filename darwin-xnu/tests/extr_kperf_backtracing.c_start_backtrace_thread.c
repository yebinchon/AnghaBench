
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_ASSERT_NOTNULL (int ,char*) ;
 int T_QUIET ;
 int backtrace_go ;
 int dispatch_semaphore_signal (int ) ;

__attribute__((used)) static void
start_backtrace_thread(void)
{
    T_QUIET; T_ASSERT_NOTNULL(backtrace_go,
        "thread to backtrace created before starting it");
    dispatch_semaphore_signal(backtrace_go);
}
