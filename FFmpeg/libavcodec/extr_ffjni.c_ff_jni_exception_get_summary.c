
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_1__ ;


typedef int * jthrowable ;
typedef int * jstring ;
typedef int * jmethodID ;
typedef int * jclass ;
struct TYPE_27__ {int (* DeleteLocalRef ) (TYPE_1__**,int *) ;int (* ExceptionClear ) (TYPE_1__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_1__**) ;int * (* CallObjectMethod ) (TYPE_1__**,int *,int *) ;int * (* GetMethodID ) (TYPE_1__**,int *,char*,char*) ;int * (* GetObjectClass ) (TYPE_1__**,int *) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef int AVBPrint ;


 int AVERROR_EXTERNAL ;
 int AV_BPRINT_SIZE_AUTOMATIC ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int av_bprint_finalize (int *,char**) ;
 int av_bprint_init (int *,int ,int ) ;
 int av_bprintf (int *,char*,...) ;
 int av_free (char*) ;
 int av_log (void*,int ,char*) ;
 char* ff_jni_jstring_to_utf_chars (TYPE_1__**,int *,void*) ;
 int * stub1 (TYPE_1__**,int *) ;
 int * stub10 (TYPE_1__**,int *,int *) ;
 scalar_t__ stub11 (TYPE_1__**) ;
 int stub12 (TYPE_1__**) ;
 int stub13 (TYPE_1__**,int *) ;
 int * stub14 (TYPE_1__**,int *,char*,char*) ;
 scalar_t__ stub15 (TYPE_1__**) ;
 int stub16 (TYPE_1__**) ;
 int * stub17 (TYPE_1__**,int *,int *) ;
 scalar_t__ stub18 (TYPE_1__**) ;
 int stub19 (TYPE_1__**) ;
 scalar_t__ stub2 (TYPE_1__**) ;
 int stub20 (TYPE_1__**,int *) ;
 int stub21 (TYPE_1__**,int *) ;
 int stub22 (TYPE_1__**,int *) ;
 int stub23 (TYPE_1__**,int *) ;
 int stub3 (TYPE_1__**) ;
 int * stub4 (TYPE_1__**,int *) ;
 scalar_t__ stub5 (TYPE_1__**) ;
 int stub6 (TYPE_1__**) ;
 int * stub7 (TYPE_1__**,int *,char*,char*) ;
 scalar_t__ stub8 (TYPE_1__**) ;
 int stub9 (TYPE_1__**) ;

int ff_jni_exception_get_summary(JNIEnv *env, jthrowable exception, char **error, void *log_ctx)
{
    int ret = 0;

    AVBPrint bp;

    char *name = ((void*)0);
    char *message = ((void*)0);

    jclass class_class = ((void*)0);
    jmethodID get_name_id = ((void*)0);

    jclass exception_class = ((void*)0);
    jmethodID get_message_id = ((void*)0);

    jstring string = ((void*)0);

    av_bprint_init(&bp, 0, AV_BPRINT_SIZE_AUTOMATIC);

    exception_class = (*env)->GetObjectClass(env, exception);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        av_log(log_ctx, AV_LOG_ERROR, "Could not find Throwable class\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    class_class = (*env)->GetObjectClass(env, exception_class);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        av_log(log_ctx, AV_LOG_ERROR, "Could not find Throwable class's class\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    get_name_id = (*env)->GetMethodID(env, class_class, "getName", "()Ljava/lang/String;");
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        av_log(log_ctx, AV_LOG_ERROR, "Could not find method Class.getName()\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    string = (*env)->CallObjectMethod(env, exception_class, get_name_id);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        av_log(log_ctx, AV_LOG_ERROR, "Class.getName() threw an exception\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    if (string) {
        name = ff_jni_jstring_to_utf_chars(env, string, log_ctx);
        (*env)->DeleteLocalRef(env, string);
        string = ((void*)0);
    }

    get_message_id = (*env)->GetMethodID(env, exception_class, "getMessage", "()Ljava/lang/String;");
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        av_log(log_ctx, AV_LOG_ERROR, "Could not find method java/lang/Throwable.getMessage()\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    string = (*env)->CallObjectMethod(env, exception, get_message_id);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        av_log(log_ctx, AV_LOG_ERROR, "Throwable.getMessage() threw an exception\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    if (string) {
        message = ff_jni_jstring_to_utf_chars(env, string, log_ctx);
        (*env)->DeleteLocalRef(env, string);
        string = ((void*)0);
    }

    if (name && message) {
        av_bprintf(&bp, "%s: %s", name, message);
    } else if (name && !message) {
        av_bprintf(&bp, "%s occurred", name);
    } else if (!name && message) {
        av_bprintf(&bp, "Exception: %s", message);
    } else {
        av_log(log_ctx, AV_LOG_WARNING, "Could not retrieve exception name and message\n");
        av_bprintf(&bp, "Exception occurred");
    }

    ret = av_bprint_finalize(&bp, error);
done:

    av_free(name);
    av_free(message);

    if (class_class) {
        (*env)->DeleteLocalRef(env, class_class);
    }

    if (exception_class) {
        (*env)->DeleteLocalRef(env, exception_class);
    }

    if (string) {
        (*env)->DeleteLocalRef(env, string);
    }

    return ret;
}
