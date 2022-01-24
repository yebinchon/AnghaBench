#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct TYPE_11__ {scalar_t__ codec_tag; } ;
struct TYPE_10__ {scalar_t__ format; int width; int height; int /*<<< orphan*/  linesize; scalar_t__ data; } ;
struct TYPE_9__ {int* data; int /*<<< orphan*/  flags; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AV_PIX_FMT_RGBA64BE ; 
 scalar_t__ AV_PIX_FMT_YUYV422 ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int FUNC0 (int*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,scalar_t__,int,int,int) ; 
 int FUNC4 (scalar_t__,int,int,int) ; 
 int FUNC5 (TYPE_3__*,TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, AVPacket *pkt,
                      const AVFrame *frame, int *got_packet)
{
    int ret = FUNC4(frame->format,
                                       frame->width, frame->height, 1);

    if (ret < 0)
        return ret;

    if ((ret = FUNC5(avctx, pkt, ret, ret)) < 0)
        return ret;
    if ((ret = FUNC3(pkt->data, pkt->size,
                                       (const uint8_t **)frame->data, frame->linesize,
                                       frame->format,
                                       frame->width, frame->height, 1)) < 0)
        return ret;

    if(avctx->codec_tag == FUNC1("yuv2") && ret > 0 &&
       frame->format   == AV_PIX_FMT_YUYV422) {
        int x;
        for(x = 1; x < frame->height*frame->width*2; x += 2)
            pkt->data[x] ^= 0x80;
    } else if (avctx->codec_tag == FUNC1("b64a") && ret > 0 &&
        frame->format == AV_PIX_FMT_RGBA64BE) {
        uint64_t v;
        int x;
        for (x = 0; x < frame->height * frame->width; x++) {
            v = FUNC0(&pkt->data[8 * x]);
            FUNC2(&pkt->data[8 * x], v << 48 | v >> 16);
        }
    }
    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;
    return 0;
}