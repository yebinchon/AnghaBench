
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_poll_source {int dummy; } ;
struct android_app {int inputQueue; int (* onInputEvent ) (struct android_app*,int *) ;} ;
typedef int int32_t ;
typedef int AInputEvent ;


 int AInputQueue_finishEvent (int ,int *,int ) ;
 scalar_t__ AInputQueue_getEvent (int ,int **) ;
 scalar_t__ AInputQueue_preDispatchEvent (int ,int *) ;
 int stub1 (struct android_app*,int *) ;

__attribute__((used)) static void process_input(struct android_app* app, struct android_poll_source* source) {
    AInputEvent* event = ((void*)0);
    while (AInputQueue_getEvent(app->inputQueue, &event) >= 0) {

        if (AInputQueue_preDispatchEvent(app->inputQueue, event)) {
            continue;
        }
        int32_t handled = 0;
        if (app->onInputEvent != ((void*)0)) handled = app->onInputEvent(app, event);
        AInputQueue_finishEvent(app->inputQueue, event, handled);
    }
}
