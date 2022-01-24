#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jstring ;
typedef  int /*<<< orphan*/  jboolean ;
struct TYPE_17__ {int /*<<< orphan*/  get_string_id; int /*<<< orphan*/  contains_key_id; } ;
struct TYPE_19__ {TYPE_1__ jfields; int /*<<< orphan*/  object; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_2__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* CallObjectMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* CallBooleanMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__* JNIEnv ;
typedef  TYPE_3__ FFAMediaFormat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__**,int,TYPE_3__*) ; 
 char* FUNC3 (TYPE_2__**,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__**,char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,int /*<<< orphan*/ *) ; 

int FUNC9(FFAMediaFormat* format, const char *name, const char **out)
{
    int ret = 1;

    JNIEnv *env = NULL;
    jstring key = NULL;
    jboolean contains_key;
    jstring result = NULL;

    FUNC1(format != NULL);

    FUNC0(env, format, 0);

    key = FUNC4(env, name, format);
    if (!key) {
        ret = 0;
        goto fail;
    }

    contains_key = (*env)->CallBooleanMethod(env, format->object, format->jfields.contains_key_id, key);
    if (!contains_key || (ret = FUNC2(env, 1, format)) < 0) {
        ret = 0;
        goto fail;
    }

    result = (*env)->CallObjectMethod(env, format->object, format->jfields.get_string_id, key);
    if ((ret = FUNC2(env, 1, format)) < 0) {
        ret = 0;
        goto fail;
    }

    *out = FUNC3(env, result, format);
    if (!*out) {
        ret = 0;
        goto fail;
    }

    ret = 1;
fail:
    if (key) {
        (*env)->DeleteLocalRef(env, key);
    }

    if (result) {
        (*env)->DeleteLocalRef(env, result);
    }

    return ret;
}