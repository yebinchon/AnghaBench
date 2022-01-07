
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct android_app {int dummy; } ;
struct TYPE_4__ {scalar_t__ instance; } ;
typedef TYPE_1__ ANativeActivity ;


 int APP_CMD_PAUSE ;
 int LOGV (char*,TYPE_1__*) ;
 int android_app_set_activity_state (struct android_app*,int ) ;

__attribute__((used)) static void onPause(ANativeActivity* activity) {
    LOGV("Pause: %p\n", activity);
    android_app_set_activity_state((struct android_app*)activity->instance, APP_CMD_PAUSE);
}
