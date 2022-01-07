
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int kpc_buf; } ;


 int kpc_counterbuf_alloc () ;
 int kpc_threads_counting ;

void
kpc_thread_create(thread_t thread)
{

 if(!kpc_threads_counting)
  return;


 thread->kpc_buf = kpc_counterbuf_alloc();
}
