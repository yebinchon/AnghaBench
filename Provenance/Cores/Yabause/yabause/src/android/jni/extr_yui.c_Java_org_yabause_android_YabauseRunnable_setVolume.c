
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jobject ;
typedef scalar_t__ jint ;
typedef int JNIEnv ;


 int SCSP_MUTE_USER ;
 int ScspMuteAudio (int ) ;
 int ScspSetVolume (scalar_t__) ;
 int ScspUnMuteAudio (int ) ;

void
Java_org_yabause_android_YabauseRunnable_setVolume( JNIEnv* env, jobject obj, jint volume )
{
    if (0 == volume)
       ScspMuteAudio(SCSP_MUTE_USER);
    else {
       ScspUnMuteAudio(SCSP_MUTE_USER);
       ScspSetVolume(volume);
    }
}
