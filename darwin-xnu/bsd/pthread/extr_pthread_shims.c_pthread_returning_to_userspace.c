
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int thread_exception_return () ;

__attribute__((used)) __attribute__((noreturn))
static void
pthread_returning_to_userspace(void)
{
 thread_exception_return();
}
