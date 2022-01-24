#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VAAPIDecodePicture ;
struct TYPE_11__ {TYPE_3__* priv_data; } ;
struct TYPE_10__ {TYPE_1__* avctx; int /*<<< orphan*/ * slice_ctx; TYPE_2__* cur_pic_ptr; } ;
struct TYPE_9__ {int /*<<< orphan*/ * hwaccel_picture_private; } ;
struct TYPE_8__ {int /*<<< orphan*/  height; } ;
typedef  int /*<<< orphan*/  H264SliceContext ;
typedef  TYPE_3__ H264Context ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx)
{
    const H264Context *h = avctx->priv_data;
    VAAPIDecodePicture *pic = h->cur_pic_ptr->hwaccel_picture_private;
    H264SliceContext *sl = &h->slice_ctx[0];
    int ret;

    ret = FUNC1(avctx, pic);
    if (ret < 0)
        goto finish;

    FUNC0(h, sl, 0, h->avctx->height);

finish:
    return ret;
}