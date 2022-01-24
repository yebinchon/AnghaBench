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
struct TYPE_10__ {int sample_rate; int /*<<< orphan*/  profile; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  duration; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int startpos; int /*<<< orphan*/  pc; } ;
typedef  int /*<<< orphan*/  ParseContext ;
typedef  TYPE_1__ DCAParseContext ;
typedef  TYPE_2__ AVCodecParserContext ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int PARSER_FLAG_COMPLETE_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int,int*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**,int*) ; 

__attribute__((used)) static int FUNC4(AVCodecParserContext *s, AVCodecContext *avctx,
                     const uint8_t **poutbuf, int *poutbuf_size,
                     const uint8_t *buf, int buf_size)
{
    DCAParseContext *pc1 = s->priv_data;
    ParseContext *pc = &pc1->pc;
    int next, duration, sample_rate;

    if (s->flags & PARSER_FLAG_COMPLETE_FRAMES) {
        next = buf_size;
    } else {
        next = FUNC1(pc1, buf, buf_size);

        if (FUNC3(pc, next, &buf, &buf_size) < 0) {
            *poutbuf      = NULL;
            *poutbuf_size = 0;
            return buf_size;
        }

        /* skip initial padding */
        if (buf_size  > pc1->startpos) {
            buf      += pc1->startpos;
            buf_size -= pc1->startpos;
        }
        pc1->startpos = 0;
    }

    /* read the duration and sample rate from the frame header */
    if (!FUNC2(pc1, buf, buf_size, &duration, &sample_rate, &avctx->profile)) {
        if (!avctx->sample_rate)
            avctx->sample_rate = sample_rate;
        s->duration = FUNC0(duration, avctx->sample_rate, sample_rate);
    } else
        s->duration = 0;

    *poutbuf      = buf;
    *poutbuf_size = buf_size;
    return next;
}