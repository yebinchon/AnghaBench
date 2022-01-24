#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_5__* hwaccel_priv_buf; scalar_t__ hwaccel_picture_private; int /*<<< orphan*/  uses_2pass; int /*<<< orphan*/  mv; int /*<<< orphan*/  segmentation_map; TYPE_5__* extradata; int /*<<< orphan*/  tf; } ;
typedef  TYPE_1__ VP9Frame ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (TYPE_5__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx, VP9Frame *dst, VP9Frame *src)
{
    int ret;

    ret = FUNC2(&dst->tf, &src->tf);
    if (ret < 0)
        return ret;

    dst->extradata = FUNC1(src->extradata);
    if (!dst->extradata)
        goto fail;

    dst->segmentation_map = src->segmentation_map;
    dst->mv = src->mv;
    dst->uses_2pass = src->uses_2pass;

    if (src->hwaccel_picture_private) {
        dst->hwaccel_priv_buf = FUNC1(src->hwaccel_priv_buf);
        if (!dst->hwaccel_priv_buf)
            goto fail;
        dst->hwaccel_picture_private = dst->hwaccel_priv_buf->data;
    }

    return 0;

fail:
    FUNC3(avctx, dst);
    return FUNC0(ENOMEM);
}