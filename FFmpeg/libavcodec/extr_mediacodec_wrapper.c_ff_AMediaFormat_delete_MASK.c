#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  jfields; int /*<<< orphan*/ * object; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* DeleteGlobalRef ) (TYPE_1__**,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__* JNIEnv ;
typedef  TYPE_2__ FFAMediaFormat ;

/* Variables and functions */
 int /*<<< orphan*/  AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  jni_amediaformat_mapping ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ *) ; 

int FUNC4(FFAMediaFormat* format)
{
    int ret = 0;

    JNIEnv *env = NULL;

    if (!format) {
        return 0;
    }

    FUNC0(env, format, AVERROR_EXTERNAL);

    (*env)->DeleteGlobalRef(env, format->object);
    format->object = NULL;

    FUNC2(env, &format->jfields, jni_amediaformat_mapping, 1, format);

    FUNC1(&format);

    return ret;
}