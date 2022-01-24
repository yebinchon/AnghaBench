#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int frame_len; int /*<<< orphan*/ ** frame_out; TYPE_4__* avctx; scalar_t__ block_pos; scalar_t__ block_num; int /*<<< orphan*/  frame_count; } ;
typedef  TYPE_1__ WMACodecContext ;
struct TYPE_7__ {int channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (float*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(WMACodecContext *s, float **samples,
                            int samples_offset)
{
    int ret, ch;

#ifdef TRACE
    ff_tlog(s->avctx, "***decode_frame: %d size=%d\n",
            s->frame_count++, s->frame_len);
#endif /* TRACE */

    /* read each block */
    s->block_num = 0;
    s->block_pos = 0;
    for (;;) {
        ret = FUNC4(s);
        if (ret < 0)
            return -1;
        if (ret)
            break;
    }

    for (ch = 0; ch < s->avctx->channels; ch++) {
        /* copy current block to output */
        FUNC2(samples[ch] + samples_offset, s->frame_out[ch],
               s->frame_len * sizeof(*s->frame_out[ch]));
        /* prepare for next block */
        FUNC3(&s->frame_out[ch][0], &s->frame_out[ch][s->frame_len],
                s->frame_len * sizeof(*s->frame_out[ch]));

#ifdef TRACE
        dump_floats(s, "samples", 6, samples[ch] + samples_offset,
                    s->frame_len);
#endif /* TRACE */
    }

    return 0;
}