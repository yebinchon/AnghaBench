
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int jstring ;
typedef int jmethodID ;
typedef int jclass ;
typedef int jboolean ;
struct TYPE_10__ {scalar_t__ (* GetEnv ) (TYPE_2__**,void**,int ) ;} ;
struct TYPE_9__ {scalar_t__ (* GetStringLength ) (TYPE_1__**,int ) ;char const* (* GetStringUTFChars ) (TYPE_1__**,int ,int *) ;int (* CallObjectMethod ) (TYPE_1__**,int ,int ) ;int (* GetMethodID ) (TYPE_1__**,int ,char*,char*) ;int (* GetObjectClass ) (TYPE_1__**,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ JNI_OK ;
 int JNI_VERSION_1_6 ;
 scalar_t__ stub1 (TYPE_2__**,void**,int ) ;
 int stub2 (TYPE_1__**,int ) ;
 int stub3 (TYPE_1__**,int ,char*,char*) ;
 int stub4 (TYPE_1__**,int ,int ) ;
 scalar_t__ stub5 (TYPE_1__**,int ) ;
 char const* stub6 (TYPE_1__**,int ,int *) ;
 int yabause ;
 TYPE_2__** yvm ;

const char * GetCartridgePath()
{
    jclass yclass;
    jmethodID getCartridgePath;
    jstring message;
    jboolean dummy;
    JNIEnv * env;
    if ((*yvm)->GetEnv(yvm, (void**) &env, JNI_VERSION_1_6) != JNI_OK)
        return ((void*)0);

    yclass = (*env)->GetObjectClass(env, yabause);
    getCartridgePath = (*env)->GetMethodID(env, yclass, "getCartridgePath", "()Ljava/lang/String;");
    message = (*env)->CallObjectMethod(env, yabause, getCartridgePath);
    if ((*env)->GetStringLength(env, message) == 0)
        return ((void*)0);
    else
        return (*env)->GetStringUTFChars(env, message, &dummy);
}
