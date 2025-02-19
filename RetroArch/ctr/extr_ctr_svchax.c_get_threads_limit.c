
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s64 ;
typedef int Handle ;


 int CURRENT_KPROCESS_HANDLE ;
 scalar_t__ MCH2_THREAD_COUNT_MAX ;
 scalar_t__ RESOURCE_LIMIT_THREADS ;
 int svcCloseHandle (int ) ;
 int svcGetResourceLimit (int *,int ) ;
 int svcGetResourceLimitCurrentValues (scalar_t__*,int ,scalar_t__*,int) ;
 int svcGetResourceLimitLimitValues (scalar_t__*,int ,scalar_t__*,int) ;

__attribute__((used)) static u32 get_threads_limit(void)
{
   Handle resource_limit_handle;
   s64 thread_limit_current;
   s64 thread_limit_max;
   u32 thread_limit_name = RESOURCE_LIMIT_THREADS;

   svcGetResourceLimit(&resource_limit_handle, CURRENT_KPROCESS_HANDLE);
   svcGetResourceLimitCurrentValues(&thread_limit_current, resource_limit_handle, &thread_limit_name, 1);
   svcGetResourceLimitLimitValues(&thread_limit_max, resource_limit_handle, &thread_limit_name, 1);
   svcCloseHandle(resource_limit_handle);

   if (thread_limit_max > MCH2_THREAD_COUNT_MAX)
      thread_limit_max = MCH2_THREAD_COUNT_MAX;

   return thread_limit_max - thread_limit_current;
}
