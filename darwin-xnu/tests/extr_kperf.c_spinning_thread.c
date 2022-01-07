
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dispatch_semaphore_t ;


 int T_ASSERT_NOTNULL (void*,char*) ;
 int T_QUIET ;
 int dispatch_semaphore_signal (int ) ;
 scalar_t__ running_threads ;

__attribute__((used)) static void *
spinning_thread(void *semp)
{
 T_QUIET;
 T_ASSERT_NOTNULL(semp, "semaphore passed to thread should not be NULL");
 dispatch_semaphore_signal(*(dispatch_semaphore_t *)semp);

 while (running_threads);
 return ((void*)0);
}
