#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int size; size_t compression; int /*<<< orphan*/  frame; int /*<<< orphan*/  const* buf; } ;
typedef  TYPE_1__ TrueMotion1Context ;
struct TYPE_14__ {TYPE_1__* priv_data; } ;
struct TYPE_13__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_11__ {scalar_t__ algorithm; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ ALGO_NOP ; 
 scalar_t__ ALGO_RGB24H ; 
 int FUNC0 (void*,int /*<<< orphan*/ ) ; 
 TYPE_10__* compression_types ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx,
                                    void *data, int *got_frame,
                                    AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int ret, buf_size = avpkt->size;
    TrueMotion1Context *s = avctx->priv_data;

    s->buf = buf;
    s->size = buf_size;

    if ((ret = FUNC4(s)) < 0)
        return ret;

    if ((ret = FUNC1(avctx, s->frame, 0)) < 0)
        return ret;

    if (compression_types[s->compression].algorithm == ALGO_RGB24H) {
        FUNC3(s);
    } else if (compression_types[s->compression].algorithm != ALGO_NOP) {
        FUNC2(s);
    }

    if ((ret = FUNC0(data, s->frame)) < 0)
        return ret;

    *got_frame      = 1;

    /* report that the buffer was completely consumed */
    return buf_size;
}