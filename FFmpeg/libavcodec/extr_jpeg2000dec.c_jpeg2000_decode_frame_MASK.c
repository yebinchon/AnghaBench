#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_19__ {void* f; } ;
typedef  TYPE_2__ ThreadFrame ;
struct TYPE_18__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_23__ {scalar_t__ pix_fmt; TYPE_1__ sample_aspect_ratio; int /*<<< orphan*/  (* execute2 ) (TYPE_6__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int) ;TYPE_3__* priv_data; } ;
struct TYPE_22__ {int key_frame; int /*<<< orphan*/ * data; int /*<<< orphan*/  pict_type; } ;
struct TYPE_21__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_20__ {int curtileno; int numXtiles; int numYtiles; int /*<<< orphan*/  g; TYPE_1__ sar; int /*<<< orphan*/  palette; TYPE_6__* avctx; int /*<<< orphan*/  cdef; } ;
typedef  TYPE_3__ Jpeg2000DecoderContext ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 scalar_t__ AV_PIX_FMT_PAL8 ; 
 int JP2_SIG_TYPE ; 
 int JP2_SIG_VALUE ; 
 scalar_t__ JPEG2000_SOC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_6__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  jpeg2000_decode_tile ; 
 int FUNC12 (TYPE_3__*) ; 
 int FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC17(AVCodecContext *avctx, void *data,
                                 int *got_frame, AVPacket *avpkt)
{
    Jpeg2000DecoderContext *s = avctx->priv_data;
    ThreadFrame frame = { .f = data };
    AVFrame *picture = data;
    int ret;

    s->avctx     = avctx;
    FUNC4(&s->g, avpkt->data, avpkt->size);
    s->curtileno = -1;
    FUNC15(s->cdef, -1, sizeof(s->cdef));

    if (FUNC3(&s->g) < 2) {
        ret = AVERROR_INVALIDDATA;
        goto end;
    }

    // check if the image is in jp2 format
    if (FUNC3(&s->g) >= 12 &&
       (FUNC2(&s->g) == 12) &&
       (FUNC2(&s->g) == JP2_SIG_TYPE) &&
       (FUNC2(&s->g) == JP2_SIG_VALUE)) {
        if (!FUNC10(s)) {
            FUNC0(avctx, AV_LOG_ERROR,
                   "Could not find Jpeg2000 codestream atom.\n");
            ret = AVERROR_INVALIDDATA;
            goto end;
        }
    } else {
        FUNC6(&s->g, 0, SEEK_SET);
    }

    while (FUNC3(&s->g) >= 3 && FUNC5(&s->g) != JPEG2000_SOC)
        FUNC7(&s->g, 1);

    if (FUNC1(&s->g) != JPEG2000_SOC) {
        FUNC0(avctx, AV_LOG_ERROR, "SOC marker not present\n");
        ret = AVERROR_INVALIDDATA;
        goto end;
    }
    if ((ret = FUNC13(s)))
        goto end;

    /* get picture buffer */
    if ((ret = FUNC9(avctx, &frame, 0)) < 0)
        goto end;
    picture->pict_type = AV_PICTURE_TYPE_I;
    picture->key_frame = 1;

    if ((ret = FUNC12(s)))
        goto end;

    avctx->execute2(avctx, jpeg2000_decode_tile, picture, NULL, s->numXtiles * s->numYtiles);

    FUNC11(s);

    *got_frame = 1;

    if (s->avctx->pix_fmt == AV_PIX_FMT_PAL8)
        FUNC14(picture->data[1], s->palette, 256 * sizeof(uint32_t));
    if (s->sar.num && s->sar.den)
        avctx->sample_aspect_ratio = s->sar;
    s->sar.num = s->sar.den = 0;

    return FUNC8(&s->g);

end:
    FUNC11(s);
    return ret;
}