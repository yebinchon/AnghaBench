
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jstring ;
typedef int jmethodID ;
typedef int jclass ;
struct TYPE_9__ {scalar_t__ (* GetEnv ) (TYPE_2__**,void**,int ) ;} ;
struct TYPE_8__ {int (* CallVoidMethod ) (TYPE_1__**,int ,int ,int ) ;int (* NewStringUTF ) (TYPE_1__**,char const*) ;int (* GetMethodID ) (TYPE_1__**,int ,char*,char*) ;int (* GetObjectClass ) (TYPE_1__**,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ JNI_OK ;
 int JNI_VERSION_1_6 ;
 scalar_t__ stub1 (TYPE_2__**,void**,int ) ;
 int stub2 (TYPE_1__**,int ) ;
 int stub3 (TYPE_1__**,int ,char*,char*) ;
 int stub4 (TYPE_1__**,char const*) ;
 int stub5 (TYPE_1__**,int ,int ,int ) ;
 int yabause ;
 TYPE_2__** yvm ;

void YuiErrorMsg(const char *string)
{
    jclass yclass;
    jmethodID errorMsg;
    jstring message;
    JNIEnv * env;
    if ((*yvm)->GetEnv(yvm, (void**) &env, JNI_VERSION_1_6) != JNI_OK)
        return;

    yclass = (*env)->GetObjectClass(env, yabause);
    errorMsg = (*env)->GetMethodID(env, yclass, "errorMsg", "(Ljava/lang/String;)V");
    message = (*env)->NewStringUTF(env, string);
    (*env)->CallVoidMethod(env, yabause, errorMsg, message);
}
