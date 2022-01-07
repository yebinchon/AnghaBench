
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef int jint ;
typedef int JNIEnv ;


 int SetOSDToggle (int ) ;

void
Java_org_yabause_android_YabauseRunnable_enableFPS( JNIEnv* env, jobject obj, jint enable )
{
    SetOSDToggle(enable);
}
