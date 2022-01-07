
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int jthrowable ;
struct TYPE_10__ {int (* DeleteLocalRef ) (TYPE_1__**,int ) ;int (* ExceptionClear ) (TYPE_1__**) ;int (* ExceptionOccurred ) (TYPE_1__**) ;int (* ExceptionCheck ) (TYPE_1__**) ;} ;
typedef TYPE_1__* JNIEnv ;


 int AV_LOG_ERROR ;
 int av_free (char*) ;
 int av_log (void*,int ,char*,char*) ;
 int ff_jni_exception_get_summary (TYPE_1__**,int ,char**,void*) ;
 int stub1 (TYPE_1__**) ;
 int stub2 (TYPE_1__**) ;
 int stub3 (TYPE_1__**) ;
 int stub4 (TYPE_1__**) ;
 int stub5 (TYPE_1__**,int ) ;
 int stub6 (TYPE_1__**,int ) ;

int ff_jni_exception_check(JNIEnv *env, int log, void *log_ctx)
{
    int ret;

    jthrowable exception;

    char *message = ((void*)0);

    if (!(*(env))->ExceptionCheck((env))) {
        return 0;
    }

    if (!log) {
        (*(env))->ExceptionClear((env));
        return -1;
    }

    exception = (*env)->ExceptionOccurred(env);
    (*(env))->ExceptionClear((env));

    if ((ret = ff_jni_exception_get_summary(env, exception, &message, log_ctx)) < 0) {
        (*env)->DeleteLocalRef(env, exception);
        return ret;
    }

    (*env)->DeleteLocalRef(env, exception);

    av_log(log_ctx, AV_LOG_ERROR, "%s\n", message);
    av_free(message);

    return -1;
}
