#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_24__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {scalar_t__ pix_fmt; TYPE_2__* priv_data; } ;
struct TYPE_30__ {int key_frame; int /*<<< orphan*/  pict_type; int /*<<< orphan*/ * data; } ;
struct TYPE_29__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_28__ {TYPE_4__* frame; int /*<<< orphan*/  skip_cursor; TYPE_24__* frame2; TYPE_1__* frame1; int /*<<< orphan*/  gb; } ;
struct TYPE_27__ {int /*<<< orphan*/ * data; } ;
struct TYPE_26__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ RASCContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 scalar_t__ AV_PIX_FMT_PAL8 ; 
 unsigned int BNDL ; 
#define  DLTA 134 
 scalar_t__ EMPT ; 
#define  FINT 133 
#define  INIT 132 
 unsigned int KBND ; 
#define  KFRM 131 
#define  MOUS 130 
#define  MOVE 129 
#define  MPOS 128 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_24__*,TYPE_4__*) ; 
 int FUNC6 (TYPE_5__*,TYPE_3__*,unsigned int) ; 
 int FUNC7 (TYPE_5__*,TYPE_3__*,unsigned int) ; 
 int FUNC8 (TYPE_5__*,TYPE_3__*,unsigned int) ; 
 int FUNC9 (TYPE_5__*,TYPE_3__*,unsigned int) ; 
 int FUNC10 (TYPE_5__*,TYPE_3__*,unsigned int) ; 
 int FUNC11 (TYPE_5__*,TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int FUNC13 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(AVCodecContext *avctx,
                        void *data, int *got_frame,
                        AVPacket *avpkt)
{
    RASCContext *s = avctx->priv_data;
    GetByteContext *gb = &s->gb;
    int ret, intra = 0;
    AVFrame *frame = data;

    FUNC2(gb, avpkt->data, avpkt->size);

    if (FUNC3(gb) == EMPT)
        return avpkt->size;

    s->frame = frame;

    while (FUNC0(gb) > 0) {
        unsigned type, size = 0;

        if (FUNC0(gb) < 8)
            return AVERROR_INVALIDDATA;

        type = FUNC1(gb);
        if (type == KBND || type == BNDL) {
            intra = type == KBND;
            type = FUNC1(gb);
        }

        size = FUNC1(gb);
        if (FUNC0(gb) < size)
            return AVERROR_INVALIDDATA;

        switch (type) {
        case FINT:
        case INIT:
            ret = FUNC7(avctx, avpkt, size);
            break;
        case KFRM:
            ret = FUNC8(avctx, avpkt, size);
            break;
        case DLTA:
            ret = FUNC6(avctx, avpkt, size);
            break;
        case MOVE:
            ret = FUNC10(avctx, avpkt, size);
            break;
        case MOUS:
            ret = FUNC9(avctx, avpkt, size);
            break;
        case MPOS:
            ret = FUNC11(avctx, avpkt, size);
            break;
        default:
            FUNC4(gb, size);
        }

        if (ret < 0)
            return ret;
    }

    if (!s->frame2->data[0] || !s->frame1->data[0])
        return AVERROR_INVALIDDATA;

    if ((ret = FUNC13(avctx, s->frame, 0)) < 0)
        return ret;

    FUNC5(avctx, s->frame2, s->frame);
    if (avctx->pix_fmt == AV_PIX_FMT_PAL8)
        FUNC14(s->frame->data[1], s->frame2->data[1], 1024);
    if (!s->skip_cursor)
        FUNC12(avctx);

    s->frame->key_frame = intra;
    s->frame->pict_type = intra ? AV_PICTURE_TYPE_I : AV_PICTURE_TYPE_P;

    *got_frame = 1;

    return avpkt->size;
}