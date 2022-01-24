#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct vdpau_picture_context {int dummy; } ;
struct TYPE_5__ {TYPE_2__* frames; } ;
typedef  TYPE_1__ VP9SharedContext ;
struct TYPE_6__ {struct vdpau_picture_context* hwaccel_picture_private; } ;
typedef  TYPE_2__ VP9Frame ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 size_t CUR_FRAME ; 
 int FUNC0 (struct vdpau_picture_context*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* start_code_prefix ; 

__attribute__((used)) static int FUNC1(AVCodecContext *avctx,
                                   const uint8_t *buffer, uint32_t size)
{
    VP9SharedContext *h = avctx->priv_data;
    VP9Frame pic = h->frames[CUR_FRAME];
    struct vdpau_picture_context *pic_ctx = pic.hwaccel_picture_private;

    int val;

    val = FUNC0(pic_ctx, start_code_prefix, 3);
    if (val)
        return val;

    val = FUNC0(pic_ctx, buffer, size);
    if (val)
        return val;

    return 0;
}