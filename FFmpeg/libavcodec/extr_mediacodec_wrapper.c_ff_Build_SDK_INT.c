
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int jfieldID ;
typedef int jclass ;
struct TYPE_7__ {int (* GetStaticIntField ) (TYPE_1__**,int ,int ) ;int (* DeleteLocalRef ) (TYPE_1__**,int ) ;int (* GetStaticFieldID ) (TYPE_1__**,int ,char*,char*) ;int (* FindClass ) (TYPE_1__**,char*) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef int AVCodecContext ;


 int JNI_GET_ENV_OR_RETURN (TYPE_1__**,int *,int) ;
 int stub1 (TYPE_1__**,char*) ;
 int stub2 (TYPE_1__**,int ,char*,char*) ;
 int stub3 (TYPE_1__**,int ,int ) ;
 int stub4 (TYPE_1__**,int ) ;

int ff_Build_SDK_INT(AVCodecContext *avctx)
{
    int ret = -1;
    JNIEnv *env = ((void*)0);
    jclass versionClass;
    jfieldID sdkIntFieldID;
    JNI_GET_ENV_OR_RETURN(env, avctx, -1);

    versionClass = (*env)->FindClass(env, "android/os/Build$VERSION");
    sdkIntFieldID = (*env)->GetStaticFieldID(env, versionClass, "SDK_INT", "I");
    ret = (*env)->GetStaticIntField(env, versionClass, sdkIntFieldID);
    (*env)->DeleteLocalRef(env, versionClass);
    return ret;
}
