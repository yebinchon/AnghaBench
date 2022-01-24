#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  palette; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ VqaContext ;
struct TYPE_14__ {TYPE_1__* priv_data; } ;
struct TYPE_13__ {int palette_has_changed; int /*<<< orphan*/ * data; } ;
struct TYPE_12__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int PALETTE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx,
                            void *data, int *got_frame,
                            AVPacket *avpkt)
{
    VqaContext *s = avctx->priv_data;
    AVFrame *frame = data;
    int res;

    if ((res = FUNC1(avctx, frame, 0)) < 0)
        return res;

    FUNC0(&s->gb, avpkt->data, avpkt->size);
    if ((res = FUNC3(s, frame)) < 0)
        return res;

    /* make the palette available on the way out */
    FUNC2(frame->data[1], s->palette, PALETTE_COUNT * 4);
    frame->palette_has_changed = 1;

    *got_frame      = 1;

    /* report that the buffer was completely consumed */
    return avpkt->size;
}