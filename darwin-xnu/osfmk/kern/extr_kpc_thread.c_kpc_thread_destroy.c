
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int * kpc_buf; } ;


 int kpc_counterbuf_free (int *) ;

void
kpc_thread_destroy(thread_t thread)
{
 uint64_t *buf = ((void*)0);


 if( !thread->kpc_buf )
  return;


 buf = thread->kpc_buf;
 thread->kpc_buf = ((void*)0);
 kpc_counterbuf_free(buf);
}
