
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct android_app {int dummy; } ;
struct TYPE_4__ {scalar_t__ instance; } ;
typedef int ANativeWindow ;
typedef TYPE_1__ ANativeActivity ;


 int LOGV (char*,TYPE_1__*,int *) ;
 int android_app_set_window (struct android_app*,int *) ;

__attribute__((used)) static void onNativeWindowDestroyed(ANativeActivity* activity, ANativeWindow* window) {
    LOGV("NativeWindowDestroyed: %p -- %p\n", activity, window);
    android_app_set_window((struct android_app*)activity->instance, ((void*)0));
}
