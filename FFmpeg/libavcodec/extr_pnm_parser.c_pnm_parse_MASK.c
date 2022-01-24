#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_15__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pix_fmt; } ;
struct TYPE_14__ {TYPE_2__* priv_data; } ;
struct TYPE_13__ {scalar_t__ bytestream_start; scalar_t__ bytestream; scalar_t__ bytestream_end; int type; } ;
struct TYPE_11__ {scalar_t__ overread; scalar_t__ buffer; scalar_t__ index; scalar_t__ overread_index; } ;
struct TYPE_12__ {int remaining_bytes; int ascii_scan; TYPE_1__ pc; } ;
typedef  TYPE_1__ ParseContext ;
typedef  TYPE_2__ PNMParseContext ;
typedef  TYPE_3__ PNMContext ;
typedef  TYPE_4__ AVCodecParserContext ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int END_NOT_FOUND ; 
 unsigned int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,int /*<<< orphan*/  const**,int*) ; 
 scalar_t__ FUNC5 (TYPE_5__*,TYPE_3__*) ; 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/  const*,char,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(AVCodecParserContext *s, AVCodecContext *avctx,
                     const uint8_t **poutbuf, int *poutbuf_size,
                     const uint8_t *buf, int buf_size)
{
    PNMParseContext *pnmpc = s->priv_data;
    ParseContext *pc = &pnmpc->pc;
    PNMContext pnmctx;
    int next = END_NOT_FOUND;
    int skip = 0;

    if (pc->overread > 0) {
        FUNC7(pc->buffer + pc->index, pc->buffer + pc->overread_index, pc->overread);
        pc->index          += pc->overread;
        pc->overread_index += pc->overread;
        pc->overread = 0;
    }

    if (pnmpc->remaining_bytes) {
        int inc = FUNC1(pnmpc->remaining_bytes, buf_size);
        skip += inc;
        pnmpc->remaining_bytes -= inc;

        if (!pnmpc->remaining_bytes)
            next = skip;
        goto end;
    }

retry:
    if (pc->index) {
        pnmctx.bytestream_start =
        pnmctx.bytestream       = pc->buffer;
        pnmctx.bytestream_end   = pc->buffer + pc->index;
    } else {
        pnmctx.bytestream_start =
        pnmctx.bytestream       = (uint8_t *) buf + skip; /* casts avoid warnings */
        pnmctx.bytestream_end   = (uint8_t *) buf + buf_size - skip;
    }
    if (FUNC5(avctx, &pnmctx) < 0) {
        if (pnmctx.bytestream < pnmctx.bytestream_end) {
            if (pc->index) {
                pc->index = 0;
                pnmpc->ascii_scan = 0;
            } else {
                unsigned step = FUNC0(1, pnmctx.bytestream - pnmctx.bytestream_start);

                skip += step;
            }
            goto retry;
        }
    } else if (pnmctx.type < 4) {
              uint8_t *bs  = pnmctx.bytestream;
        const uint8_t *end = pnmctx.bytestream_end;
        uint8_t *sync      = bs;

        if (pc->index) {
            FUNC2(pnmpc->ascii_scan <= end - bs);
            bs += pnmpc->ascii_scan;
        }

        while (bs < end) {
            int c;
            sync = bs;
            c = *bs++;
            if (c == '#')  {
                uint8_t *match = FUNC6(bs, '\n', end-bs);
                if (match)
                    bs = match + 1;
                else
                    break;
            } else if (c == 'P') {
                next = bs - pnmctx.bytestream_start + skip - 1;
                pnmpc->ascii_scan = 0;
                break;
            }
        }
        if (next == END_NOT_FOUND)
            pnmpc->ascii_scan = sync - pnmctx.bytestream + skip;
    } else {
        next = pnmctx.bytestream - pnmctx.bytestream_start + skip
               + FUNC3(avctx->pix_fmt, avctx->width, avctx->height, 1);
    }
    if (next != END_NOT_FOUND && pnmctx.bytestream_start != buf + skip)
        next -= pc->index;
    if (next > buf_size) {
        pnmpc->remaining_bytes = next - buf_size;
        next = END_NOT_FOUND;
    }
end:
    if (FUNC4(pc, next, &buf, &buf_size) < 0) {
        *poutbuf      = NULL;
        *poutbuf_size = 0;
        return buf_size;
    }
    *poutbuf      = buf;
    *poutbuf_size = buf_size;
    return next;
}