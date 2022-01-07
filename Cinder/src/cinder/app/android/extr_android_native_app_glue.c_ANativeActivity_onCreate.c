
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int instance; TYPE_1__* callbacks; } ;
struct TYPE_6__ {int onLowMemory; int onConfigurationChanged; int onInputQueueDestroyed; int onInputQueueCreated; int onNativeWindowDestroyed; int onNativeWindowCreated; int onWindowFocusChanged; int onDestroy; int onStop; int onPause; int onSaveInstanceState; int onResume; int onStart; } ;
typedef TYPE_2__ ANativeActivity ;


 int LOGV (char*,TYPE_2__*) ;
 int android_app_create (TYPE_2__*,void*,size_t) ;
 int onConfigurationChanged ;
 int onDestroy ;
 int onInputQueueCreated ;
 int onInputQueueDestroyed ;
 int onLowMemory ;
 int onNativeWindowCreated ;
 int onNativeWindowDestroyed ;
 int onPause ;
 int onResume ;
 int onSaveInstanceState ;
 int onStart ;
 int onStop ;
 int onWindowFocusChanged ;

void ANativeActivity_onCreate(ANativeActivity* activity, void* savedState, size_t savedStateSize) {
    LOGV("ANativeActivity_onCreate: %p\n", activity);

    activity->callbacks->onStart = onStart;
    activity->callbacks->onResume = onResume;
    activity->callbacks->onSaveInstanceState = onSaveInstanceState;
    activity->callbacks->onPause = onPause;
    activity->callbacks->onStop = onStop;
    activity->callbacks->onDestroy = onDestroy;
    activity->callbacks->onWindowFocusChanged = onWindowFocusChanged;
    activity->callbacks->onNativeWindowCreated = onNativeWindowCreated;
    activity->callbacks->onNativeWindowDestroyed = onNativeWindowDestroyed;
    activity->callbacks->onInputQueueCreated = onInputQueueCreated;
    activity->callbacks->onInputQueueDestroyed = onInputQueueDestroyed;
    activity->callbacks->onConfigurationChanged = onConfigurationChanged;
    activity->callbacks->onLowMemory = onLowMemory;
    activity->instance = android_app_create(activity, savedState, savedStateSize);
}
