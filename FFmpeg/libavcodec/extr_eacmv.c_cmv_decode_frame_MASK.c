#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_18__ {TYPE_1__* priv_data; } ;
struct TYPE_17__ {int key_frame; int /*<<< orphan*/  pict_type; int /*<<< orphan*/ * data; } ;
struct TYPE_16__ {int* data; int size; } ;
struct TYPE_15__ {int /*<<< orphan*/  last_frame; int /*<<< orphan*/  last2_frame; int /*<<< orphan*/  palette; int /*<<< orphan*/  avctx; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_1__ CmvContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 scalar_t__ FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int const*) ; 
 int EA_PREAMBLE_SIZE ; 
 scalar_t__ MVIh_TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_3__*,int const*,int const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_3__*,int const*,int const*) ; 
 int FUNC8 (TYPE_1__*,int const*,int const*) ; 
 int FUNC9 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx,
                            void *data, int *got_frame,
                            AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    CmvContext *s = avctx->priv_data;
    const uint8_t *buf_end = buf + buf_size;
    AVFrame *frame = data;
    int ret;

    if (buf_end - buf < EA_PREAMBLE_SIZE)
        return AVERROR_INVALIDDATA;

    if (FUNC1(buf)==MVIh_TAG||FUNC0(buf)==MVIh_TAG) {
        unsigned size = FUNC1(buf + 4);
        ret = FUNC8(s, buf+EA_PREAMBLE_SIZE, buf_end);
        if (ret < 0)
            return ret;
        if (size > buf_end - buf - EA_PREAMBLE_SIZE)
            return AVERROR_INVALIDDATA;
        buf += size;
    }

    if ((ret = FUNC5(s->width, s->height, 0, s->avctx)) < 0)
        return ret;

    if ((ret = FUNC9(avctx, frame, AV_GET_BUFFER_FLAG_REF)) < 0)
        return ret;

    FUNC10(frame->data[1], s->palette, AVPALETTE_SIZE);

    buf += EA_PREAMBLE_SIZE;
    if ((buf[0]&1)) {  // subtype
        FUNC6(s, frame, buf+2, buf_end);
        frame->key_frame = 0;
        frame->pict_type = AV_PICTURE_TYPE_P;
    }else{
        frame->key_frame = 1;
        frame->pict_type = AV_PICTURE_TYPE_I;
        FUNC7(s, frame, buf+2, buf_end);
    }

    FUNC4(s->last2_frame);
    FUNC2(s->last2_frame, s->last_frame);
    if ((ret = FUNC3(s->last_frame, frame)) < 0)
        return ret;

    *got_frame = 1;

    return buf_size;
}