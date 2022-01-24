#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jstring ;
typedef  int /*<<< orphan*/  jboolean ;
struct TYPE_9__ {char* (* GetStringUTFChars ) (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* ExceptionClear ) (TYPE_1__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_1__**) ;int /*<<< orphan*/  (* ReleaseStringUTFChars ) (TYPE_1__**,int /*<<< orphan*/ ,char const*) ;} ;
typedef  TYPE_1__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC6 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**) ; 

char *FUNC8(JNIEnv *env, jstring string, void *log_ctx)
{
    char *ret = NULL;
    const char *utf_chars = NULL;

    jboolean copy = 0;

    if (!string) {
        return NULL;
    }

    utf_chars = (*env)->GetStringUTFChars(env, string, &copy);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        FUNC0(log_ctx, AV_LOG_ERROR, "String.getStringUTFChars() threw an exception\n");
        return NULL;
    }

    ret = FUNC1(utf_chars);

    (*env)->ReleaseStringUTFChars(env, string, utf_chars);
    if ((*env)->ExceptionCheck(env)) {
        (*env)->ExceptionClear(env);
        FUNC0(log_ctx, AV_LOG_ERROR, "String.releaseStringUTFChars() threw an exception\n");
        return NULL;
    }

    return ret;
}