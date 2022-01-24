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
typedef  int uint8_t ;
struct TYPE_8__ {int delta_size; int hscale; } ;
typedef  TYPE_1__ TrueMotion2RTContext ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int* data; int size; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (TYPE_3__*,int,int) ; 

__attribute__((used)) static int FUNC3(AVCodecContext *avctx, const AVPacket *avpkt)
{
    TrueMotion2RTContext *s = avctx->priv_data;
    int header_size;
    uint8_t header_buffer[128] = { 0 };  /* logical maximum header size */
    const uint8_t *buf = avpkt->data;
    int size = avpkt->size;
    int width, height;
    int ret, i;

    if (size < 1) {
        FUNC1(avctx, AV_LOG_ERROR, "input packet too small (%d)\n", size);
        return AVERROR_INVALIDDATA;
    }

    header_size = ((buf[0] >> 5) | (buf[0] << 3)) & 0x7f;
    if (header_size < 10) {
        FUNC1(avctx, AV_LOG_ERROR, "invalid header size (%d)\n", header_size);
        return AVERROR_INVALIDDATA;
    }

    if (header_size + 1 > size) {
        FUNC1(avctx, AV_LOG_ERROR, "input packet too small (%d)\n", size);
        return AVERROR_INVALIDDATA;
    }

    /* unscramble the header bytes with a XOR operation */
    for (i = 1; i < header_size; i++)
        header_buffer[i - 1] = buf[i] ^ buf[i + 1];

    s->delta_size = header_buffer[1];
    s->hscale = 1 + !!header_buffer[3];
    if (s->delta_size < 2 || s->delta_size > 4)
        return AVERROR_INVALIDDATA;

    height = FUNC0(header_buffer + 5);
    width  = FUNC0(header_buffer + 7);

    ret = FUNC2(avctx, width, height);
    if (ret < 0)
        return ret;

    FUNC1(avctx, AV_LOG_DEBUG, "Header size: %d\n", header_size);
    return header_size;
}