
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_app {int mutex; scalar_t__ savedStateSize; int * savedState; } ;


 int free (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void free_saved_state(struct android_app* android_app) {
    pthread_mutex_lock(&android_app->mutex);
    if (android_app->savedState != ((void*)0)) {
        free(android_app->savedState);
        android_app->savedState = ((void*)0);
        android_app->savedStateSize = 0;
    }
    pthread_mutex_unlock(&android_app->mutex);
}
