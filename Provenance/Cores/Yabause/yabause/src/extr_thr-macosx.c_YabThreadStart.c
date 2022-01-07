
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int running; void (* func ) (void*) ;int mutex; int cond; int thd; void* arg; } ;


 int fprintf (int ,char*,...) ;
 int hnd_key_once ;
 int make_key ;
 int pthread_cond_destroy (int *) ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_create (int *,int *,int ,TYPE_1__*) ;
 int pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_once (int *,int ) ;
 int stderr ;
 TYPE_1__* thread_handle ;
 int wrapper ;

int YabThreadStart(unsigned int id, void (*func)(void *), void *arg) {

    pthread_once(&hnd_key_once, make_key);


    if(thread_handle[id].running) {
        fprintf(stderr, "YabThreadStart: Thread %u is already started!\n", id);
        return -1;
    }


    if(pthread_mutex_init(&thread_handle[id].mutex, ((void*)0))) {
        fprintf(stderr, "YabThreadStart: Error creating mutex\n");
        return -1;
    }

    if(pthread_cond_init(&thread_handle[id].cond, ((void*)0))) {
        fprintf(stderr, "YabThreadStart: Error creating condvar\n");
        pthread_mutex_destroy(&thread_handle[id].mutex);
        return -1;
    }

    thread_handle[id].func = func;
    thread_handle[id].arg = arg;


    if(pthread_create(&thread_handle[id].thd, ((void*)0), wrapper,
                      &thread_handle[id])) {
        fprintf(stderr, "YabThreadStart: Couldn't start thread\n");
        pthread_cond_destroy(&thread_handle[id].cond);
        pthread_mutex_destroy(&thread_handle[id].mutex);
        return -1;
    }

    thread_handle[id].running = 1;

    return 0;
}
