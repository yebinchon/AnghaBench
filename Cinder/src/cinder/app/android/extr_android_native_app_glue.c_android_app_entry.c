
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int process; struct android_app* app; int id; } ;
struct TYPE_5__ {int process; struct android_app* app; int id; } ;
struct android_app {int running; int mutex; int cond; int * looper; TYPE_3__ cmdPollSource; int msgread; TYPE_2__ inputPollSource; TYPE_1__* activity; int config; } ;
struct TYPE_4__ {int assetManager; } ;
typedef int ALooper ;


 int AConfiguration_fromAssetManager (int ,int ) ;
 int AConfiguration_new () ;
 int ALOOPER_EVENT_INPUT ;
 int ALOOPER_PREPARE_ALLOW_NON_CALLBACKS ;
 int ALooper_addFd (int *,int ,int ,int ,int *,TYPE_3__*) ;
 int * ALooper_prepare (int ) ;
 int LOOPER_ID_INPUT ;
 int LOOPER_ID_MAIN ;
 int android_app_destroy (struct android_app*) ;
 int android_main (struct android_app*) ;
 int print_cur_config (struct android_app*) ;
 int process_cmd ;
 int process_input ;
 int pthread_cond_broadcast (int *) ;
 int pthread_exit (void*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void* android_app_entry(void* param) {
    struct android_app* android_app = (struct android_app*)param;

    android_app->config = AConfiguration_new();
    AConfiguration_fromAssetManager(android_app->config, android_app->activity->assetManager);

    print_cur_config(android_app);

    android_app->cmdPollSource.id = LOOPER_ID_MAIN;
    android_app->cmdPollSource.app = android_app;
    android_app->cmdPollSource.process = process_cmd;
    android_app->inputPollSource.id = LOOPER_ID_INPUT;
    android_app->inputPollSource.app = android_app;
    android_app->inputPollSource.process = process_input;

    ALooper* looper = ALooper_prepare(ALOOPER_PREPARE_ALLOW_NON_CALLBACKS);
    ALooper_addFd(looper, android_app->msgread, LOOPER_ID_MAIN, ALOOPER_EVENT_INPUT, ((void*)0),
            &android_app->cmdPollSource);
    android_app->looper = looper;

    pthread_mutex_lock(&android_app->mutex);
    android_app->running = 1;
    pthread_cond_broadcast(&android_app->cond);
    pthread_mutex_unlock(&android_app->mutex);

    android_main(android_app);

    android_app_destroy(android_app);



    pthread_exit((void*)((void*)0));
    return ((void*)0);
}
