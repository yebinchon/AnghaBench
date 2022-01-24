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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  jint ;
struct TYPE_10__ {int /*<<< orphan*/  queue_input_buffer_id; } ;
struct TYPE_12__ {TYPE_1__ jfields; int /*<<< orphan*/  object; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* CallVoidMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__* JNIEnv ;
typedef  TYPE_3__ FFAMediaCodec ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,TYPE_3__*,int) ; 
 int FUNC1 (TYPE_2__**,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(FFAMediaCodec* codec, size_t idx, off_t offset, size_t size, uint64_t time, uint32_t flags)
{
    int ret = 0;
    JNIEnv *env = NULL;

    FUNC0(env, codec, AVERROR_EXTERNAL);

    (*env)->CallVoidMethod(env, codec->object, codec->jfields.queue_input_buffer_id, (jint)idx, (jint)offset, (jint)size, time, flags);
    if ((ret = FUNC1(env, 1, codec)) < 0) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

fail:
    return ret;
}