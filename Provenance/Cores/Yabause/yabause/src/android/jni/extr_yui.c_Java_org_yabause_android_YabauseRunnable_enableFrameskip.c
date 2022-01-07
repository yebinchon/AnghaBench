
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef scalar_t__ jint ;
typedef int JNIEnv ;


 int DisableAutoFrameSkip () ;
 int EnableAutoFrameSkip () ;

void
Java_org_yabause_android_YabauseRunnable_enableFrameskip( JNIEnv* env, jobject obj, jint enable )
{
    if (enable)
        EnableAutoFrameSkip();
    else
        DisableAutoFrameSkip();
}
