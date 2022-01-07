
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int thread; } ;
typedef TYPE_1__ ThreadContext ;


 int avpriv_slicethread_free (int *) ;

__attribute__((used)) static void slice_thread_uninit(ThreadContext *c)
{
    avpriv_slicethread_free(&c->thread);
}
