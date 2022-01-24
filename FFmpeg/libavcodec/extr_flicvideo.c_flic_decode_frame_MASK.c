#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {scalar_t__ pix_fmt; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_BUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_BGR24 ; 
 scalar_t__ AV_PIX_FMT_PAL8 ; 
 scalar_t__ AV_PIX_FMT_RGB555 ; 
 scalar_t__ AV_PIX_FMT_RGB565 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_2__*,void*,int*,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (TYPE_2__*,void*,int*,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (TYPE_2__*,void*,int*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx,
                             void *data, int *got_frame,
                             AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    if (avctx->pix_fmt == AV_PIX_FMT_PAL8) {
        return FUNC3(avctx, data, got_frame,
                                      buf, buf_size);
    } else if ((avctx->pix_fmt == AV_PIX_FMT_RGB555) ||
               (avctx->pix_fmt == AV_PIX_FMT_RGB565)) {
        return FUNC1(avctx, data, got_frame,
                                          buf, buf_size);
    } else if (avctx->pix_fmt == AV_PIX_FMT_BGR24) {
        return FUNC2(avctx, data, got_frame,
                                       buf, buf_size);
    }

    /* Should not get  here, ever as the pix_fmt is processed */
    /* in flic_decode_init and the above if should deal with */
    /* the finite set of possibilities allowable by here. */
    /* But in case we do, just error out. */
    FUNC0(avctx, AV_LOG_ERROR, "Unknown FLC format, my science cannot explain how this happened.\n");
    return AVERROR_BUG;
}