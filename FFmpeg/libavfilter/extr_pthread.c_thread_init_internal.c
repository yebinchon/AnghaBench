
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int thread; } ;
typedef TYPE_1__ ThreadContext ;


 int FFMAX (int,int) ;
 int avpriv_slicethread_create (int *,TYPE_1__*,int ,int *,int) ;
 int avpriv_slicethread_free (int *) ;
 int worker_func ;

__attribute__((used)) static int thread_init_internal(ThreadContext *c, int nb_threads)
{
    nb_threads = avpriv_slicethread_create(&c->thread, c, worker_func, ((void*)0), nb_threads);
    if (nb_threads <= 1)
        avpriv_slicethread_free(&c->thread);
    return FFMAX(nb_threads, 1);
}
