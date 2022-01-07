
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int * jstring ;
struct TYPE_6__ {int (* ExceptionClear ) (TYPE_1__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_1__**) ;int * (* NewStringUTF ) (TYPE_1__**,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int AV_LOG_ERROR ;
 int av_log (void*,int ,char*) ;
 int * stub1 (TYPE_1__**,char const*) ;
 scalar_t__ stub2 (TYPE_1__**) ;
 int stub3 (TYPE_1__**) ;

jstring ff_jni_utf_chars_to_jstring(JNIEnv *env, const char *utf_chars, void *log_ctx)
{
    jstring ret;

    ret = (*env)->NewStringUTF(env, utf_chars);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        av_log(log_ctx, AV_LOG_ERROR, "NewStringUTF() threw an exception\n");
        return ((void*)0);
    }

    return ret;
}
