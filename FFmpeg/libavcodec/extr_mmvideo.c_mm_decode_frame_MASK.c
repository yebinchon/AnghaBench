#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_15__ {TYPE_1__* priv_data; } ;
struct TYPE_14__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_13__ {TYPE_10__* frame; int /*<<< orphan*/  palette; int /*<<< orphan*/  gb; } ;
struct TYPE_12__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ MmContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVPALETTE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int MM_PREAMBLE_SIZE ; 
#define  MM_TYPE_INTER 134 
#define  MM_TYPE_INTER_HH 133 
#define  MM_TYPE_INTER_HHV 132 
#define  MM_TYPE_INTRA 131 
#define  MM_TYPE_INTRA_HH 130 
#define  MM_TYPE_INTRA_HHV 129 
#define  MM_TYPE_PALETTE 128 
 int FUNC1 (void*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC3 (TYPE_3__*,TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int,int) ; 
 int FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx,
                            void *data, int *got_frame,
                            AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    MmContext *s = avctx->priv_data;
    int type, res;

    if (buf_size < MM_PREAMBLE_SIZE)
        return AVERROR_INVALIDDATA;
    type = FUNC0(&buf[0]);
    buf += MM_PREAMBLE_SIZE;
    buf_size -= MM_PREAMBLE_SIZE;
    FUNC2(&s->gb, buf, buf_size);

    if ((res = FUNC3(avctx, s->frame, 0)) < 0)
        return res;

    switch(type) {
    case MM_TYPE_PALETTE   : FUNC7(s); return avpkt->size;
    case MM_TYPE_INTRA     : res = FUNC6(s, 0, 0); break;
    case MM_TYPE_INTRA_HH  : res = FUNC6(s, 1, 0); break;
    case MM_TYPE_INTRA_HHV : res = FUNC6(s, 1, 1); break;
    case MM_TYPE_INTER     : res = FUNC5(s, 0, 0); break;
    case MM_TYPE_INTER_HH  : res = FUNC5(s, 1, 0); break;
    case MM_TYPE_INTER_HHV : res = FUNC5(s, 1, 1); break;
    default:
        res = AVERROR_INVALIDDATA;
        break;
    }
    if (res < 0)
        return res;

    FUNC4(s->frame->data[1], s->palette, AVPALETTE_SIZE);

    if ((res = FUNC1(data, s->frame)) < 0)
        return res;

    *got_frame      = 1;

    return avpkt->size;
}