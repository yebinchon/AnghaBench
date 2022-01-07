
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_app {int msgwrite; } ;
typedef int int8_t ;
typedef int cmd ;


 int LOGE (char*,int ) ;
 int errno ;
 int strerror (int ) ;
 int write (int ,int *,int) ;

__attribute__((used)) static void android_app_write_cmd(struct android_app* android_app, int8_t cmd) {
    if (write(android_app->msgwrite, &cmd, sizeof(cmd)) != sizeof(cmd)) {
        LOGE("Failure writing android_app cmd: %s\n", strerror(errno));
    }
}
