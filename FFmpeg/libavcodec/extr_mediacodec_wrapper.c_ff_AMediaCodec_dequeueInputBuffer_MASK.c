#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_10__ {int /*<<< orphan*/  dequeue_input_buffer_id; } ;
struct TYPE_12__ {TYPE_1__ jfields; int /*<<< orphan*/  object; } ;
struct TYPE_11__ {int (* CallIntMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__* JNIEnv ;
typedef  TYPE_3__ FFAMediaCodec ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,TYPE_3__*,int) ; 
 scalar_t__ FUNC1 (TYPE_2__**,int,TYPE_3__*) ; 
 int FUNC2 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ssize_t FUNC3(FFAMediaCodec* codec, int64_t timeoutUs)
{
    int ret = 0;
    JNIEnv *env = NULL;

    FUNC0(env, codec, AVERROR_EXTERNAL);

    ret = (*env)->CallIntMethod(env, codec->object, codec->jfields.dequeue_input_buffer_id, timeoutUs);
    if (FUNC1(env, 1, codec) < 0) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

fail:
    return ret;
}