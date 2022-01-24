#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jthrowable ;
typedef  int /*<<< orphan*/ * jstring ;
typedef  int /*<<< orphan*/ * jmethodID ;
typedef  int /*<<< orphan*/ * jclass ;
struct TYPE_27__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_1__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* ExceptionClear ) (TYPE_1__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_1__**) ;int /*<<< orphan*/ * (* CallObjectMethod ) (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* GetMethodID ) (TYPE_1__**,int /*<<< orphan*/ *,char*,char*) ;int /*<<< orphan*/ * (* GetObjectClass ) (TYPE_1__**,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__* JNIEnv ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_AUTOMATIC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (TYPE_1__**,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__**,int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC12 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__**) ; 
 scalar_t__ FUNC17 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC23 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC26 (TYPE_1__**,int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC27 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__**) ; 

int FUNC29(JNIEnv *env, jthrowable exception, char **error, void *log_ctx)
{
    int ret = 0;

    AVBPrint bp;

    char *name = NULL;
    char *message = NULL;

    jclass class_class = NULL;
    jmethodID get_name_id = NULL;

    jclass exception_class = NULL;
    jmethodID get_message_id = NULL;

    jstring string = NULL;

    FUNC1(&bp, 0, AV_BPRINT_SIZE_AUTOMATIC);

    exception_class = (*env)->GetObjectClass(env, exception);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        FUNC4(log_ctx, AV_LOG_ERROR, "Could not find Throwable class\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    class_class = (*env)->GetObjectClass(env, exception_class);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        FUNC4(log_ctx, AV_LOG_ERROR, "Could not find Throwable class's class\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    get_name_id = (*env)->GetMethodID(env, class_class, "getName", "()Ljava/lang/String;");
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        FUNC4(log_ctx, AV_LOG_ERROR, "Could not find method Class.getName()\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    string = (*env)->CallObjectMethod(env, exception_class, get_name_id);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        FUNC4(log_ctx, AV_LOG_ERROR, "Class.getName() threw an exception\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    if (string) {
        name = FUNC5(env, string, log_ctx);
        (*env)->DeleteLocalRef(env, string);
        string = NULL;
    }

    get_message_id = (*env)->GetMethodID(env, exception_class, "getMessage", "()Ljava/lang/String;");
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        FUNC4(log_ctx, AV_LOG_ERROR, "Could not find method java/lang/Throwable.getMessage()\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    string = (*env)->CallObjectMethod(env, exception, get_message_id);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        FUNC4(log_ctx, AV_LOG_ERROR, "Throwable.getMessage() threw an exception\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    if (string) {
        message = FUNC5(env, string, log_ctx);
        (*env)->DeleteLocalRef(env, string);
        string = NULL;
    }

    if (name && message) {
        FUNC2(&bp, "%s: %s", name, message);
    } else if (name && !message) {
        FUNC2(&bp, "%s occurred", name);
    } else if (!name && message) {
        FUNC2(&bp, "Exception: %s", message);
    } else {
        FUNC4(log_ctx, AV_LOG_WARNING, "Could not retrieve exception name and message\n");
        FUNC2(&bp, "Exception occurred");
    }

    ret = FUNC0(&bp, error);
done:

    FUNC3(name);
    FUNC3(message);

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