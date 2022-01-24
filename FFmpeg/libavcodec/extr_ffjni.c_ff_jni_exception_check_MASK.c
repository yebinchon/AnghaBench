#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jthrowable ;
struct TYPE_10__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_1__**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ExceptionClear ) (TYPE_1__**) ;int /*<<< orphan*/  (* ExceptionOccurred ) (TYPE_1__**) ;int /*<<< orphan*/  (* ExceptionCheck ) (TYPE_1__**) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (TYPE_1__**,int /*<<< orphan*/ ,char**,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int /*<<< orphan*/ ) ; 

int FUNC9(JNIEnv *env, int log, void *log_ctx)
{
    int ret;

    jthrowable exception;

    char *message = NULL;

    if (!(*(env))->ExceptionCheck((env))) {
        return 0;
    }

    if (!log) {
        (*(env))->ExceptionClear((env));
        return -1;
    }

    exception = (*env)->ExceptionOccurred(env);
    (*(env))->ExceptionClear((env));

    if ((ret = FUNC2(env, exception, &message, log_ctx)) < 0) {
        (*env)->DeleteLocalRef(env, exception);
        return ret;
    }

    (*env)->DeleteLocalRef(env, exception);

    FUNC1(log_ctx, AV_LOG_ERROR, "%s\n", message);
    FUNC0(message);

    return -1;
}