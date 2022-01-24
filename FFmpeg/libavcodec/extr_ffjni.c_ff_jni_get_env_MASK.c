#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* GetEnv ) (TYPE_1__**,void**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* AttachCurrentThread ) (TYPE_1__**,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
#define  JNI_EDETACHED 130 
#define  JNI_EVERSION 129 
#define  JNI_OK 128 
 int /*<<< orphan*/  JNI_VERSION_1_6 ; 
 TYPE_1__** FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  current_env ; 
 TYPE_1__** java_vm ; 
 int /*<<< orphan*/  jni_create_pthread_key ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  once ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__**,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

JNIEnv *FUNC9(void *log_ctx)
{
    int ret = 0;
    JNIEnv *env = NULL;

    FUNC3(&lock);
    if (java_vm == NULL) {
        java_vm = FUNC0(log_ctx);
    }

    if (!java_vm) {
        FUNC1(log_ctx, AV_LOG_ERROR, "No Java virtual machine has been registered\n");
        goto done;
    }

    FUNC5(&once, jni_create_pthread_key);

    if ((env = FUNC2(current_env)) != NULL) {
        goto done;
    }

    ret = (*java_vm)->GetEnv(java_vm, (void **)&env, JNI_VERSION_1_6);
    switch(ret) {
    case JNI_EDETACHED:
        if ((*java_vm)->AttachCurrentThread(java_vm, &env, NULL) != 0) {
            FUNC1(log_ctx, AV_LOG_ERROR, "Failed to attach the JNI environment to the current thread\n");
            env = NULL;
        } else {
            FUNC6(current_env, env);
        }
        break;
    case JNI_OK:
        break;
    case JNI_EVERSION:
        FUNC1(log_ctx, AV_LOG_ERROR, "The specified JNI version is not supported\n");
        break;
    default:
        FUNC1(log_ctx, AV_LOG_ERROR, "Failed to get the JNI environment attached to this thread\n");
        break;
    }

done:
    FUNC4(&lock);
    return env;
}