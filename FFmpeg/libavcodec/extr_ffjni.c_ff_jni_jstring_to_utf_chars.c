
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int jstring ;
typedef int jboolean ;
struct TYPE_9__ {char* (* GetStringUTFChars ) (TYPE_1__**,int ,int *) ;int (* ExceptionClear ) (TYPE_1__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_1__**) ;int (* ReleaseStringUTFChars ) (TYPE_1__**,int ,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int AV_LOG_ERROR ;
 int av_log (void*,int ,char*) ;
 char* av_strdup (char const*) ;
 char* stub1 (TYPE_1__**,int ,int *) ;
 scalar_t__ stub2 (TYPE_1__**) ;
 int stub3 (TYPE_1__**) ;
 int stub4 (TYPE_1__**,int ,char const*) ;
 scalar_t__ stub5 (TYPE_1__**) ;
 int stub6 (TYPE_1__**) ;

char *ff_jni_jstring_to_utf_chars(JNIEnv *env, jstring string, void *log_ctx)
{
    char *ret = ((void*)0);
    const char *utf_chars = ((void*)0);

    jboolean copy = 0;

    if (!string) {
        return ((void*)0);
    }

    utf_chars = (*env)->GetStringUTFChars(env, string, &copy);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        av_log(log_ctx, AV_LOG_ERROR, "String.getStringUTFChars() threw an exception\n");
        return ((void*)0);
    }

    ret = av_strdup(utf_chars);

    (*env)->ReleaseStringUTFChars(env, string, utf_chars);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        av_log(log_ctx, AV_LOG_ERROR, "String.releaseStringUTFChars() threw an exception\n");
        return ((void*)0);
    }

    return ret;
}
