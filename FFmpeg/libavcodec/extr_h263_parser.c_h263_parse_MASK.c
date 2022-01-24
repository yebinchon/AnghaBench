#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int flags; int /*<<< orphan*/ * priv_data; } ;
typedef  int /*<<< orphan*/  ParseContext ;
typedef  TYPE_1__ AVCodecParserContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int PARSER_FLAG_COMPLETE_FRAMES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2(AVCodecParserContext *s,
                           AVCodecContext *avctx,
                           const uint8_t **poutbuf, int *poutbuf_size,
                           const uint8_t *buf, int buf_size)
{
    ParseContext *pc = s->priv_data;
    int next;

    if (s->flags & PARSER_FLAG_COMPLETE_FRAMES) {
        next = buf_size;
    } else {
        next= FUNC1(pc, buf, buf_size);

        if (FUNC0(pc, next, &buf, &buf_size) < 0) {
            *poutbuf = NULL;
            *poutbuf_size = 0;
            return buf_size;
        }
    }

    *poutbuf = buf;
    *poutbuf_size = buf_size;
    return next;
}