#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ access_unit_size; int /*<<< orphan*/  avctx; int /*<<< orphan*/ ** bypassed_lsbs; TYPE_1__* substream; } ;
struct TYPE_6__ {scalar_t__ blockpos; scalar_t__ blocksize; unsigned int min_channel; unsigned int max_channel; scalar_t__ data_check_present; } ;
typedef  TYPE_1__ SubStream ;
typedef  TYPE_2__ MLPDecodeContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(MLPDecodeContext *m, GetBitContext *gbp,
                           unsigned int substr)
{
    SubStream *s = &m->substream[substr];
    unsigned int i, ch, expected_stream_pos = 0;
    int ret;

    if (s->data_check_present) {
        expected_stream_pos  = FUNC4(gbp);
        expected_stream_pos += FUNC3(gbp, 16);
        FUNC1(m->avctx,
                              "Substreams with VLC block size check info");
    }

    if (s->blockpos + s->blocksize > m->access_unit_size) {
        FUNC0(m->avctx, AV_LOG_ERROR, "too many audio samples in frame\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC5(&m->bypassed_lsbs[s->blockpos][0], 0,
           s->blocksize * sizeof(m->bypassed_lsbs[0]));

    for (i = 0; i < s->blocksize; i++)
        if ((ret = FUNC6(m, gbp, substr, i)) < 0)
            return ret;

    for (ch = s->min_channel; ch <= s->max_channel; ch++)
        FUNC2(m, substr, ch);

    s->blockpos += s->blocksize;

    if (s->data_check_present) {
        if (FUNC4(gbp) != expected_stream_pos)
            FUNC0(m->avctx, AV_LOG_ERROR, "block data length mismatch\n");
        FUNC7(gbp, 8);
    }

    return 0;
}