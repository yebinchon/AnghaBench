#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jstring ;
struct TYPE_12__ {int /*<<< orphan*/  to_string_id; } ;
struct TYPE_14__ {TYPE_1__ jfields; int /*<<< orphan*/  object; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_2__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* CallObjectMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__* JNIEnv ;
typedef  TYPE_3__ FFAMediaFormat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__**,int,int /*<<< orphan*/ *) ; 
 char* FUNC3 (TYPE_2__**,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ *) ; 

char* FUNC6(FFAMediaFormat* format)
{
    char *ret = NULL;

    JNIEnv *env = NULL;
    jstring description = NULL;

    FUNC1(format != NULL);

    FUNC0(env, format, NULL);

    description = (*env)->CallObjectMethod(env, format->object, format->jfields.to_string_id);
    if (FUNC2(env, 1, NULL) < 0) {
        goto fail;
    }

    ret = FUNC3(env, description, format);
fail:
    if (description) {
        (*env)->DeleteLocalRef(env, description);
    }

    return ret;
}