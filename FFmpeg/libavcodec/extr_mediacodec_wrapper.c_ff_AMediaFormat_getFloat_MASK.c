#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jstring ;
typedef  int /*<<< orphan*/  jboolean ;
struct TYPE_14__ {int /*<<< orphan*/  get_float_id; int /*<<< orphan*/  contains_key_id; } ;
struct TYPE_16__ {TYPE_1__ jfields; int /*<<< orphan*/  object; } ;
struct TYPE_15__ {float (* CallFloatMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_2__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* CallBooleanMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__* JNIEnv ;
typedef  TYPE_3__ FFAMediaFormat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__**,int,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__**,char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 float FUNC5 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,int /*<<< orphan*/ *) ; 

int FUNC7(FFAMediaFormat* format, const char *name, float *out)
{
    int ret = 1;

    JNIEnv *env = NULL;
    jstring key = NULL;
    jboolean contains_key;

    FUNC1(format != NULL);

    FUNC0(env, format, 0);

    key = FUNC3(env, name, format);
    if (!key) {
        ret = 0;
        goto fail;
    }

    contains_key = (*env)->CallBooleanMethod(env, format->object, format->jfields.contains_key_id, key);
    if (!contains_key || (ret = FUNC2(env, 1, format)) < 0) {
        ret = 0;
        goto fail;
    }

    *out = (*env)->CallFloatMethod(env, format->object, format->jfields.get_float_id, key);
    if ((ret = FUNC2(env, 1, format)) < 0) {
        ret = 0;
        goto fail;
    }

    ret = 1;
fail:
    if (key) {
        (*env)->DeleteLocalRef(env, key);
    }

    return ret;
}