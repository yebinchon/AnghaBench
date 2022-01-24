#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int /*<<< orphan*/  err_recognition; int /*<<< orphan*/  extradata_size; scalar_t__ extradata; } ;
struct TYPE_11__ {int flags; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int parsed_extradata; int /*<<< orphan*/  nal_length_size; int /*<<< orphan*/  is_avc; int /*<<< orphan*/  sei; int /*<<< orphan*/  ps; int /*<<< orphan*/  pc; } ;
typedef  int /*<<< orphan*/  ParseContext ;
typedef  TYPE_1__ HEVCParserContext ;
typedef  TYPE_2__ AVCodecParserContext ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int PARSER_FLAG_COMPLETE_FRAMES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*,int,TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(AVCodecParserContext *s, AVCodecContext *avctx,
                      const uint8_t **poutbuf, int *poutbuf_size,
                      const uint8_t *buf, int buf_size)
{
    int next;
    HEVCParserContext *ctx = s->priv_data;
    ParseContext *pc = &ctx->pc;
    int is_dummy_buf = !buf_size;
    const uint8_t *dummy_buf = buf;

    if (avctx->extradata && !ctx->parsed_extradata) {
        FUNC1(avctx->extradata, avctx->extradata_size, &ctx->ps, &ctx->sei,
                                 &ctx->is_avc, &ctx->nal_length_size, avctx->err_recognition,
                                 1, avctx);
        ctx->parsed_extradata = 1;
    }

    if (s->flags & PARSER_FLAG_COMPLETE_FRAMES) {
        next = buf_size;
    } else {
        next = FUNC2(s, buf, buf_size);
        if (FUNC0(pc, next, &buf, &buf_size) < 0) {
            *poutbuf      = NULL;
            *poutbuf_size = 0;
            return buf_size;
        }
    }

    is_dummy_buf &= (dummy_buf == buf);

    if (!is_dummy_buf)
        FUNC3(s, buf, buf_size, avctx);

    *poutbuf      = buf;
    *poutbuf_size = buf_size;
    return next;
}