#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  tf; void* seg_map; TYPE_1__* hwaccel_priv_buf; int /*<<< orphan*/  hwaccel_picture_private; } ;
typedef  TYPE_2__ VP8Frame ;
struct TYPE_11__ {int mb_width; int mb_height; TYPE_7__* avctx; } ;
typedef  TYPE_3__ VP8Context ;
struct TYPE_13__ {TYPE_4__* hwaccel; } ;
struct TYPE_12__ {int frame_priv_data_size; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ AVHWAccel ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 
 int FUNC3 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(VP8Context *s, VP8Frame *f, int ref)
{
    int ret;
    if ((ret = FUNC3(s->avctx, &f->tf,
                                    ref ? AV_GET_BUFFER_FLAG_REF : 0)) < 0)
        return ret;
    if (!(f->seg_map = FUNC1(s->mb_width * s->mb_height)))
        goto fail;
    if (s->avctx->hwaccel) {
        const AVHWAccel *hwaccel = s->avctx->hwaccel;
        if (hwaccel->frame_priv_data_size) {
            f->hwaccel_priv_buf = FUNC1(hwaccel->frame_priv_data_size);
            if (!f->hwaccel_priv_buf)
                goto fail;
            f->hwaccel_picture_private = f->hwaccel_priv_buf->data;
        }
    }
    return 0;

fail:
    FUNC2(&f->seg_map);
    FUNC4(s->avctx, &f->tf);
    return FUNC0(ENOMEM);
}