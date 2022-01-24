#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int /*<<< orphan*/  delay_buf3; int /*<<< orphan*/  delay_buf2; int /*<<< orphan*/  delay_buf1; } ;
struct TYPE_7__ {int /*<<< orphan*/  temp_buf; TYPE_4__* units; int /*<<< orphan*/  gb; int /*<<< orphan*/  coding_mode; } ;
struct TYPE_6__ {int channels; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ AVCodecContext ;
typedef  TYPE_2__ ATRAC3Context ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_4__*,float*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,int,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, const uint8_t *databuf,
                           int size, float **out_samples)
{
    ATRAC3Context *q = avctx->priv_data;
    int ret, i;

    /* Set the bitstream reader at the start of a channel sound unit. */
    FUNC3(&q->gb, databuf, size * 8);
    /* single channels */
    /* Decode the channel sound units. */
    for (i = 0; i < avctx->channels; i++) {
        ret = FUNC0(q, &q->gb, &q->units[i],
                                        out_samples[i], i, q->coding_mode);
        if (ret != 0)
            return ret;
        while (i < avctx->channels && FUNC2(&q->gb) > 6 && FUNC4(&q->gb, 6) != 0x28) {
            FUNC5(&q->gb, 1);
        }
    }

    /* Apply the iQMF synthesis filter. */
    for (i = 0; i < avctx->channels; i++) {
        float *p1 = out_samples[i];
        float *p2 = p1 + 256;
        float *p3 = p2 + 256;
        float *p4 = p3 + 256;
        FUNC1(p1, p2, 256, p1, q->units[i].delay_buf1, q->temp_buf);
        FUNC1(p4, p3, 256, p3, q->units[i].delay_buf2, q->temp_buf);
        FUNC1(p1, p3, 512, p1, q->units[i].delay_buf3, q->temp_buf);
    }

    return 0;
}