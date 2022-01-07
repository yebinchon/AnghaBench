
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct android_app {int dummy; } ;
struct TYPE_4__ {scalar_t__ instance; } ;
typedef TYPE_1__ ANativeActivity ;


 int APP_CMD_GAINED_FOCUS ;
 int APP_CMD_LOST_FOCUS ;
 int LOGV (char*,TYPE_1__*,int) ;
 int android_app_write_cmd (struct android_app*,int ) ;

__attribute__((used)) static void onWindowFocusChanged(ANativeActivity* activity, int focused) {
    LOGV("WindowFocusChanged: %p -- %d\n", activity, focused);
    android_app_write_cmd((struct android_app*)activity->instance,
            focused ? APP_CMD_GAINED_FOCUS : APP_CMD_LOST_FOCUS);
}
