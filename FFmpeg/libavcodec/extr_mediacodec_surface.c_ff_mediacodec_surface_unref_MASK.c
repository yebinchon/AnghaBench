#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* DeleteGlobalRef ) (TYPE_1__**,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__* JNIEnv ;
typedef  int /*<<< orphan*/  FFANativeWindow ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 TYPE_1__** FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ *) ; 

int FUNC2(FFANativeWindow *window, void *log_ctx)
{
    JNIEnv *env = NULL;

    env = FUNC0(log_ctx);
    if (!env) {
        return AVERROR_EXTERNAL;
    }

    (*env)->DeleteGlobalRef(env, window);

    return 0;
}