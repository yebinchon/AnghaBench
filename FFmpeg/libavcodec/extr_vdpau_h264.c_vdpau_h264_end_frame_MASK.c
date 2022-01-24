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
struct vdpau_picture_context {int dummy; } ;
struct TYPE_11__ {TYPE_3__* priv_data; } ;
struct TYPE_10__ {TYPE_1__* avctx; TYPE_2__* cur_pic_ptr; int /*<<< orphan*/ * slice_ctx; } ;
struct TYPE_9__ {int /*<<< orphan*/  f; struct vdpau_picture_context* hwaccel_picture_private; } ;
struct TYPE_8__ {int /*<<< orphan*/  height; } ;
typedef  int /*<<< orphan*/  H264SliceContext ;
typedef  TYPE_2__ H264Picture ;
typedef  TYPE_3__ H264Context ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,struct vdpau_picture_context*) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx)
{
    H264Context *h = avctx->priv_data;
    H264SliceContext *sl = &h->slice_ctx[0];
    H264Picture *pic = h->cur_pic_ptr;
    struct vdpau_picture_context *pic_ctx = pic->hwaccel_picture_private;
    int val;

    val = FUNC1(avctx, pic->f, pic_ctx);
    if (val < 0)
        return val;

    FUNC0(h, sl, 0, h->avctx->height);
    return 0;
}