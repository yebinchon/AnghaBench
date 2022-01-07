
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_app {size_t savedStateSize; int msgread; int msgwrite; int mutex; int cond; int running; int thread; scalar_t__ savedState; int * activity; } ;
typedef int pthread_attr_t ;
typedef int ANativeActivity ;


 int LOGE (char*,int ) ;
 int PTHREAD_CREATE_DETACHED ;
 int android_app_entry ;
 int errno ;
 scalar_t__ malloc (size_t) ;
 int memcpy (scalar_t__,void*,size_t) ;
 int memset (struct android_app*,int ,int) ;
 scalar_t__ pipe (int*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_create (int *,int *,int ,struct android_app*) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strerror (int ) ;

__attribute__((used)) static struct android_app* android_app_create(ANativeActivity* activity,
        void* savedState, size_t savedStateSize) {
    struct android_app* android_app = (struct android_app*)malloc(sizeof(struct android_app));
    memset(android_app, 0, sizeof(struct android_app));
    android_app->activity = activity;

    pthread_mutex_init(&android_app->mutex, ((void*)0));
    pthread_cond_init(&android_app->cond, ((void*)0));

    if (savedState != ((void*)0)) {
        android_app->savedState = malloc(savedStateSize);
        android_app->savedStateSize = savedStateSize;
        memcpy(android_app->savedState, savedState, savedStateSize);
    }

    int msgpipe[2];
    if (pipe(msgpipe)) {
        LOGE("could not create pipe: %s", strerror(errno));
        return ((void*)0);
    }
    android_app->msgread = msgpipe[0];
    android_app->msgwrite = msgpipe[1];

    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
    pthread_create(&android_app->thread, &attr, android_app_entry, android_app);


    pthread_mutex_lock(&android_app->mutex);
    while (!android_app->running) {
        pthread_cond_wait(&android_app->cond, &android_app->mutex);
    }
    pthread_mutex_unlock(&android_app->mutex);

    return android_app;
}
