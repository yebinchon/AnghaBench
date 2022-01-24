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
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
struct TYPE_10__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; TYPE_2__* buf; } ;
typedef  TYPE_1__ AVPacket ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__**,int /*<<< orphan*/ ) ; 

int FUNC7(AVPacket *dst, const AVPacket *src)
{
    int ret;

    ret = FUNC3(dst, src);
    if (ret < 0)
        return ret;

    if (!src->buf) {
        ret = FUNC6(&dst->buf, src->size);
        if (ret < 0)
            goto fail;
        FUNC1(!src->size || src->data);
        if (src->size)
            FUNC5(dst->buf->data, src->data, src->size);

        dst->data = dst->buf->data;
    } else {
        dst->buf = FUNC2(src->buf);
        if (!dst->buf) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
        dst->data = src->data;
    }

    dst->size = src->size;

    return 0;
fail:
    FUNC4(dst);
    return ret;
}