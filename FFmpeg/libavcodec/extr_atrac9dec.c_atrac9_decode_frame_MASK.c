#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int avg_frame_size; int frame_log2; int /*<<< orphan*/ * block; TYPE_1__* block_config; int /*<<< orphan*/  frame_count; } ;
struct TYPE_15__ {int block_align; TYPE_5__* priv_data; } ;
struct TYPE_14__ {int nb_samples; } ;
struct TYPE_13__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {int count; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;
typedef  TYPE_5__ ATRAC9Context ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*,int,int) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx, void *data,
                               int *got_frame_ptr, AVPacket *avpkt)
{
    int ret;
    GetBitContext gb;
    AVFrame *frame = data;
    ATRAC9Context *s = avctx->priv_data;
    const int frames = FUNC0(avpkt->size / s->avg_frame_size, s->frame_count);

    frame->nb_samples = (1 << s->frame_log2) * frames;
    ret = FUNC3(avctx, frame, 0);
    if (ret < 0)
        return ret;

    FUNC4(&gb, avpkt->data, avpkt->size);

    for (int i = 0; i < frames; i++) {
        for (int j = 0; j < s->block_config->count; j++) {
            ret = FUNC2(s, &gb, &s->block[j], frame, i, j);
            if (ret)
                return ret;
            FUNC1(&gb);
        }
    }

    *got_frame_ptr = 1;

    return avctx->block_align;
}