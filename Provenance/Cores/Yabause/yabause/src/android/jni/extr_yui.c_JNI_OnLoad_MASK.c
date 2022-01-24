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
typedef  int jint ;
struct TYPE_5__ {scalar_t__ (* GetEnv ) (TYPE_1__**,void**,int) ;} ;
typedef  TYPE_1__* JavaVM ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_CALLBACK ; 
 scalar_t__ JNI_OK ; 
 int JNI_VERSION_1_6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ log_callback ; 
 scalar_t__ FUNC2 (TYPE_1__**,void**,int) ; 
 TYPE_1__** yvm ; 

jint FUNC3(JavaVM * vm, void * reserved)
{
    JNIEnv * env;
    if ((*vm)->GetEnv(vm, (void**) &env, JNI_VERSION_1_6) != JNI_OK)
        return -1;

    yvm = vm;

    FUNC1();
    FUNC0(DEBUG_CALLBACK, (char *) log_callback);

    return JNI_VERSION_1_6;
}