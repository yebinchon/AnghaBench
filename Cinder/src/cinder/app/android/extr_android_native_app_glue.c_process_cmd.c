
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_poll_source {int dummy; } ;
struct android_app {int (* onAppCmd ) (struct android_app*,int ) ;} ;
typedef int int8_t ;


 int android_app_post_exec_cmd (struct android_app*,int ) ;
 int android_app_pre_exec_cmd (struct android_app*,int ) ;
 int android_app_read_cmd (struct android_app*) ;
 int stub1 (struct android_app*,int ) ;

__attribute__((used)) static void process_cmd(struct android_app* app, struct android_poll_source* source) {
    int8_t cmd = android_app_read_cmd(app);
    android_app_pre_exec_cmd(app, cmd);
    if (app->onAppCmd != ((void*)0)) app->onAppCmd(app, cmd);
    android_app_post_exec_cmd(app, cmd);
}
