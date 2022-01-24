#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int packet_index; int packet_len; int /*<<< orphan*/ * packet; } ;
typedef  TYPE_1__ DVDSubParseContext ;
typedef  TYPE_2__ AVCodecParserContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 unsigned int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 unsigned int INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC6(AVCodecParserContext *s,
                        AVCodecContext *avctx,
                        const uint8_t **poutbuf, int *poutbuf_size,
                        const uint8_t *buf, int buf_size)
{
    DVDSubParseContext *pc = s->priv_data;

    *poutbuf      = buf;
    *poutbuf_size = buf_size;

    if (pc->packet_index == 0) {
        if (buf_size < 2 || FUNC0(buf) && buf_size < 6) {
            if (buf_size)
                FUNC3(avctx, AV_LOG_DEBUG, "Parser input %d too small\n", buf_size);
            return buf_size;
        }
        pc->packet_len = FUNC0(buf);
        if (pc->packet_len == 0) /* HD-DVD subpicture packet */
            pc->packet_len = FUNC1(buf+2);
        FUNC2(&pc->packet);
        if ((unsigned)pc->packet_len > INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE) {
            FUNC3(avctx, AV_LOG_ERROR, "packet length %d is invalid\n", pc->packet_len);
            return buf_size;
        }
        pc->packet = FUNC4(pc->packet_len + AV_INPUT_BUFFER_PADDING_SIZE);
    }
    if (pc->packet) {
        if (pc->packet_index + buf_size <= pc->packet_len) {
            FUNC5(pc->packet + pc->packet_index, buf, buf_size);
            pc->packet_index += buf_size;
            if (pc->packet_index >= pc->packet_len) {
                *poutbuf = pc->packet;
                *poutbuf_size = pc->packet_len;
                pc->packet_index = 0;
                return buf_size;
            }
        } else {
            /* erroneous size */
            pc->packet_index = 0;
        }
    }
    *poutbuf = NULL;
    *poutbuf_size = 0;
    return buf_size;
}