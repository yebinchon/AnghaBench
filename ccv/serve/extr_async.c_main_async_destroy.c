
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int async_queue ;
 int async_queue_semaphore ;
 int dispatch_release (int ) ;
 int free (int ) ;

void main_async_destroy(void)
{
 dispatch_release(async_queue_semaphore);
 free(async_queue);
}
