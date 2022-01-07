
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct android_app {int activityState; int destroyRequested; TYPE_1__* activity; int config; int mutex; int cond; int pendingWindow; int window; int inputPollSource; int looper; int * inputQueue; int * pendingInputQueue; } ;
typedef int int8_t ;
struct TYPE_2__ {int assetManager; } ;


 int AConfiguration_fromAssetManager (int ,int ) ;
 int AInputQueue_attachLooper (int *,int ,int ,int *,int *) ;
 int AInputQueue_detachLooper (int *) ;
 int LOGV (char*) ;
 int LOOPER_ID_INPUT ;
 int print_cur_config (struct android_app*) ;
 int pthread_cond_broadcast (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void android_app_pre_exec_cmd(struct android_app* android_app, int8_t cmd) {
    switch (cmd) {
        case 133:

            pthread_mutex_lock(&android_app->mutex);
            if (android_app->inputQueue != ((void*)0)) {
                AInputQueue_detachLooper(android_app->inputQueue);
            }
            android_app->inputQueue = android_app->pendingInputQueue;
            if (android_app->inputQueue != ((void*)0)) {
                LOGV("Attaching input queue to looper");
                AInputQueue_attachLooper(android_app->inputQueue,
                        android_app->looper, LOOPER_ID_INPUT, ((void*)0),
                        &android_app->inputPollSource);
            }
            pthread_cond_broadcast(&android_app->cond);
            pthread_mutex_unlock(&android_app->mutex);
            break;

        case 134:

            pthread_mutex_lock(&android_app->mutex);
            android_app->window = android_app->pendingWindow;
            pthread_cond_broadcast(&android_app->cond);
            pthread_mutex_unlock(&android_app->mutex);
            break;

        case 128:

            pthread_cond_broadcast(&android_app->cond);
            break;

        case 131:
        case 130:
        case 132:
        case 129:

            pthread_mutex_lock(&android_app->mutex);
            android_app->activityState = cmd;
            pthread_cond_broadcast(&android_app->cond);
            pthread_mutex_unlock(&android_app->mutex);
            break;

        case 136:

            AConfiguration_fromAssetManager(android_app->config,
                    android_app->activity->assetManager);
            print_cur_config(android_app);
            break;

        case 135:

            android_app->destroyRequested = 1;
            break;
    }
}
