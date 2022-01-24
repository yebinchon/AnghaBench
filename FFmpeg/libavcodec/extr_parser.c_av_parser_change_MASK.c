#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int flags; int flags2; int extradata_size; int /*<<< orphan*/  const* extradata; } ;
struct TYPE_8__ {TYPE_1__* parser; } ;
struct TYPE_7__ {int (* split ) (TYPE_3__*,int /*<<< orphan*/  const*,int) ;} ;
typedef  TYPE_2__ AVCodecParserContext ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_CODEC_FLAG2_LOCAL_HEADER ; 
 int AV_CODEC_FLAG_GLOBAL_HEADER ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/  const*,int) ; 

int FUNC4(AVCodecParserContext *s, AVCodecContext *avctx,
                     uint8_t **poutbuf, int *poutbuf_size,
                     const uint8_t *buf, int buf_size, int keyframe)
{
    if (s && s->parser->split) {
        if (avctx->flags  & AV_CODEC_FLAG_GLOBAL_HEADER ||
            avctx->flags2 & AV_CODEC_FLAG2_LOCAL_HEADER) {
            int i = s->parser->split(avctx, buf, buf_size);
            buf      += i;
            buf_size -= i;
        }
    }

    /* cast to avoid warning about discarding qualifiers */
    *poutbuf      = (uint8_t *) buf;
    *poutbuf_size = buf_size;
    if (avctx->extradata) {
        if (keyframe && (avctx->flags2 & AV_CODEC_FLAG2_LOCAL_HEADER)) {
            int size = buf_size + avctx->extradata_size;

            *poutbuf_size = size;
            *poutbuf      = FUNC1(size + AV_INPUT_BUFFER_PADDING_SIZE);
            if (!*poutbuf)
                return FUNC0(ENOMEM);

            FUNC2(*poutbuf, avctx->extradata, avctx->extradata_size);
            FUNC2(*poutbuf + avctx->extradata_size, buf,
                   buf_size + AV_INPUT_BUFFER_PADDING_SIZE);
            return 1;
        }
    }

    return 0;
}