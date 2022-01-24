#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {int /*<<< orphan*/  frame; } ;
typedef  TYPE_1__ SeqVideoContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC3(AVCodecContext *avctx,
                                 void *data, int *got_frame,
                                 AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    int ret;

    SeqVideoContext *seq = avctx->priv_data;

    if ((ret = FUNC1(avctx, seq->frame, 0)) < 0)
        return ret;

    if (FUNC2(seq, buf, buf_size))
        return AVERROR_INVALIDDATA;

    if ((ret = FUNC0(data, seq->frame)) < 0)
        return ret;
    *got_frame       = 1;

    return buf_size;
}