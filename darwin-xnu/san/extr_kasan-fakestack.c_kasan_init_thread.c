
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kasan_thread_data {int fakestack_head; } ;


 int LIST_INIT (int *) ;

void kasan_init_thread(struct kasan_thread_data *td)
{
 LIST_INIT(&td->fakestack_head);
}
