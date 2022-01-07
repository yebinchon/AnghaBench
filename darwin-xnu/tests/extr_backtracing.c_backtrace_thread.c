
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NON_RECURSE_FRAMES ;
 int T_LOG (char*,unsigned int,unsigned int) ;
 unsigned int USER_FRAMES ;
 int recurse_a (unsigned int) ;

__attribute__((used)) static void *
backtrace_thread(void *arg)
{
#pragma unused(arg)
 unsigned int calls;






    calls = USER_FRAMES - NON_RECURSE_FRAMES;

    T_LOG("backtrace thread calling into %d frames (already at %d frames)",
       calls, NON_RECURSE_FRAMES);
    (void)recurse_a(calls);
    return ((void*)0);
}
