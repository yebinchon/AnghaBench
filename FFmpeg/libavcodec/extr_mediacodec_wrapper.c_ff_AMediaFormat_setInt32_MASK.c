#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jstring ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_13__ {int /*<<< orphan*/  set_integer_id; } ;
struct TYPE_15__ {TYPE_1__ jfields; int /*<<< orphan*/  object; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_2__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* CallVoidMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__* JNIEnv ;
typedef  TYPE_3__ FFAMediaFormat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__**,int,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__**,char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ *) ; 

void FUNC6(FFAMediaFormat* format, const char* name, int32_t value)
{
    JNIEnv *env = NULL;
    jstring key = NULL;

    FUNC1(format != NULL);

    FUNC0(env, format);

    key = FUNC3(env, name, format);
    if (!key) {
        goto fail;
    }

    (*env)->CallVoidMethod(env, format->object, format->jfields.set_integer_id, key, value);
    if (FUNC2(env, 1, format) < 0) {
        goto fail;
    }

fail:
    if (key) {
        (*env)->DeleteLocalRef(env, key);
    }
}