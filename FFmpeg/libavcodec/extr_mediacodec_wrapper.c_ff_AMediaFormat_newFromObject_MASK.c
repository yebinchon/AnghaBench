#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  jfields; int /*<<< orphan*/  object; int /*<<< orphan*/ * class; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* NewGlobalRef ) (TYPE_1__**,void*) ;} ;
typedef  TYPE_1__* JNIEnv ;
typedef  TYPE_2__ FFAMediaFormat ;

/* Variables and functions */
 int /*<<< orphan*/  amediaformat_class ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 
 TYPE_2__* FUNC1 (int) ; 
 TYPE_1__** FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  jni_amediaformat_mapping ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,void*) ; 

__attribute__((used)) static FFAMediaFormat *FUNC6(void *object)
{
    JNIEnv *env = NULL;
    FFAMediaFormat *format = NULL;

    format = FUNC1(sizeof(FFAMediaFormat));
    if (!format) {
        return NULL;
    }
    format->class = &amediaformat_class;

    env = FUNC2(format);
    if (!env) {
        FUNC0(&format);
        return NULL;
    }

    if (FUNC3(env, &format->jfields, jni_amediaformat_mapping, 1, format) < 0) {
        goto fail;
    }

    format->object = (*env)->NewGlobalRef(env, object);
    if (!format->object) {
        goto fail;
    }

    return format;
fail:
    FUNC4(env, &format->jfields, jni_amediaformat_mapping, 1, format);

    FUNC0(&format);

    return NULL;
}