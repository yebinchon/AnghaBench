
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_continue_t ;


 int THREAD_NULL ;
 scalar_t__ bcleanbuf_thread ;
 int kernel_thread_start (int ,int *,int *) ;
 int thread_deallocate (int ) ;

__attribute__((used)) static void
bcleanbuf_thread_init(void)
{
 thread_t thread = THREAD_NULL;


 kernel_thread_start((thread_continue_t)bcleanbuf_thread, ((void*)0), &thread);
 thread_deallocate(thread);
}
