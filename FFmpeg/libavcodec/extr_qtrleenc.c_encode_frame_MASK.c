#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int* linesize; scalar_t__* data; } ;
struct TYPE_11__ {unsigned int logical_width; unsigned int pixel_size; TYPE_2__* avctx; TYPE_1__* previous_frame; int /*<<< orphan*/  key_frame; } ;
struct TYPE_10__ {int height; } ;
struct TYPE_9__ {int* linesize; scalar_t__* data; } ;
typedef  TYPE_3__ QtrleEncContext ;
typedef  TYPE_4__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__ const*,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC6(QtrleEncContext *s, const AVFrame *p, uint8_t *buf)
{
    int i;
    int start_line = 0;
    int end_line = s->avctx->height;
    uint8_t *orig_buf = buf;

    if (!s->key_frame) {
        unsigned line_size = s->logical_width * s->pixel_size;
        for (start_line = 0; start_line < s->avctx->height; start_line++)
            if (FUNC4(p->data[0] + start_line*p->linesize[0],
                       s->previous_frame->data[0] + start_line * s->previous_frame->linesize[0],
                       line_size))
                break;

        for (end_line=s->avctx->height; end_line > start_line; end_line--)
            if (FUNC4(p->data[0] + (end_line - 1)*p->linesize[0],
                       s->previous_frame->data[0] + (end_line - 1) * s->previous_frame->linesize[0],
                       line_size))
                break;
    }

    FUNC2(&buf, 0);                         // CHUNK SIZE, patched later

    if ((start_line == 0 && end_line == s->avctx->height) || start_line == s->avctx->height)
        FUNC1(&buf, 0);                     // header
    else {
        FUNC1(&buf, 8);                     // header
        FUNC1(&buf, start_line);            // starting line
        FUNC1(&buf, 0);                     // unknown
        FUNC1(&buf, end_line - start_line); // lines to update
        FUNC1(&buf, 0);                     // unknown
    }
    for (i = start_line; i < end_line; i++)
        FUNC5(s, p, i, &buf);

    FUNC3(&buf, 0);                         // zero skip code = frame finished
    FUNC0(orig_buf, buf - orig_buf);                    // patch the chunk size
    return buf - orig_buf;
}