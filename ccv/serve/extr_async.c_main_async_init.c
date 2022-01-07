
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int main_async_t ;


 int * async_queue ;
 int async_queue_semaphore ;
 int dispatch_semaphore_create (int) ;
 int ev_async_init (int *,int ) ;
 int main_async ;
 int main_async_drain ;
 scalar_t__ malloc (int) ;
 int queue_length ;

void main_async_init(void)
{
 async_queue_semaphore = dispatch_semaphore_create(1);
 async_queue = (main_async_t*)malloc(sizeof(main_async_t) * queue_length);
 ev_async_init(&main_async, main_async_drain);
}
