
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JNIEnv ;


 int YabauseDeInit () ;

void
Java_org_yabause_android_YabauseRunnable_deinit( JNIEnv* env )
{
    YabauseDeInit();
}
