#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_47__   TYPE_9__ ;
typedef  struct TYPE_46__   TYPE_8__ ;
typedef  struct TYPE_45__   TYPE_7__ ;
typedef  struct TYPE_44__   TYPE_6__ ;
typedef  struct TYPE_43__   TYPE_5__ ;
typedef  struct TYPE_42__   TYPE_4__ ;
typedef  struct TYPE_41__   TYPE_3__ ;
typedef  struct TYPE_40__   TYPE_2__ ;
typedef  struct TYPE_39__   TYPE_1__ ;
typedef  struct TYPE_38__   TYPE_12__ ;
typedef  struct TYPE_37__   TYPE_10__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  opj_stream_t ;
struct TYPE_41__ {int x1; int x0; int y1; int y0; int numcomps; TYPE_1__* comps; } ;
typedef  TYPE_3__ opj_image_t ;
typedef  int /*<<< orphan*/  opj_codec_t ;
struct TYPE_42__ {void* f; } ;
typedef  TYPE_4__ ThreadFrame ;
struct TYPE_47__ {int key_frame; int /*<<< orphan*/  pict_type; } ;
struct TYPE_46__ {char* data; int size; } ;
struct TYPE_45__ {TYPE_2__* comp; } ;
struct TYPE_44__ {int member_1; char* member_2; int /*<<< orphan*/  member_0; } ;
struct TYPE_38__ {int /*<<< orphan*/  cp_reduce; int /*<<< orphan*/  cp_layer; } ;
struct TYPE_43__ {TYPE_12__ dec_params; int /*<<< orphan*/  lowqual; } ;
struct TYPE_40__ {int step; } ;
struct TYPE_39__ {scalar_t__ prec; int /*<<< orphan*/  data; } ;
struct TYPE_37__ {scalar_t__ bits_per_raw_sample; int /*<<< orphan*/  pix_fmt; int /*<<< orphan*/  lowres; TYPE_5__* priv_data; } ;
typedef  TYPE_5__ LibOpenJPEGContext ;
typedef  TYPE_6__ BufferReader ;
typedef  TYPE_7__ AVPixFmtDescriptor ;
typedef  TYPE_8__ AVPacket ;
typedef  TYPE_9__ AVFrame ;
typedef  TYPE_10__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PIX_FMT_NONE ; 
 int FUNC0 (char*) ; 
 int JP2_SIG_TYPE ; 
 int JP2_SIG_VALUE ; 
 int /*<<< orphan*/  OPJ_CODEC_J2K ; 
 int /*<<< orphan*/  OPJ_CODEC_JP2 ; 
 int /*<<< orphan*/  OPJ_STREAM_READ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,char*,int) ; 
 int /*<<< orphan*/  error_callback ; 
 int FUNC4 (TYPE_10__*,int,int) ; 
 int FUNC5 (TYPE_10__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  info_callback ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_9__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_12__*) ; 
 int /*<<< orphan*/ * FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stream_read ; 
 int /*<<< orphan*/  stream_seek ; 
 int /*<<< orphan*/  stream_skip ; 
 int /*<<< orphan*/  warning_callback ; 

__attribute__((used)) static int FUNC29(AVCodecContext *avctx,
                                    void *data, int *got_frame,
                                    AVPacket *avpkt)
{
    uint8_t *buf            = avpkt->data;
    int buf_size            = avpkt->size;
    LibOpenJPEGContext *ctx = avctx->priv_data;
    ThreadFrame frame       = { .f = data };
    AVFrame *picture        = data;
    const AVPixFmtDescriptor *desc;
    int width, height, ret;
    int pixel_size = 0;
    int ispacked   = 0;
    int i;
    opj_image_t *image = NULL;
    BufferReader reader = {0, avpkt->size, avpkt->data};
    opj_codec_t *dec = NULL;
    opj_stream_t *stream = NULL;

    *got_frame = 0;

    // Check if input is a raw jpeg2k codestream or in jp2 wrapping
    if ((FUNC0(buf) == 12) &&
        (FUNC0(buf + 4) == JP2_SIG_TYPE) &&
        (FUNC0(buf + 8) == JP2_SIG_VALUE)) {
        dec = FUNC13(OPJ_CODEC_JP2);
    } else {
        /* If the AVPacket contains a jp2c box, then skip to
         * the starting byte of the codestream. */
        if (FUNC0(buf + 4) == FUNC0("jp2c"))
            buf += 8;
        dec = FUNC13(OPJ_CODEC_J2K);
    }

    if (!dec) {
        FUNC1(avctx, AV_LOG_ERROR, "Error initializing decoder.\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    if (!FUNC18(dec, error_callback, avctx) ||
        !FUNC20(dec, warning_callback, avctx) ||
        !FUNC19(dec, info_callback, avctx)) {
        FUNC1(avctx, AV_LOG_ERROR, "Error setting decoder handlers.\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    ctx->dec_params.cp_layer = ctx->lowqual;
    ctx->dec_params.cp_reduce = avctx->lowres;

    // Tie decoder with decoding parameters
    FUNC21(dec, &ctx->dec_params);

    stream = FUNC22(OPJ_STREAM_READ);

    if (!stream) {
        FUNC1(avctx, AV_LOG_ERROR,
               "Codestream could not be opened for reading.\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    FUNC24(stream, stream_read);
    FUNC26(stream, stream_skip);
    FUNC25(stream, stream_seek);
    FUNC27(stream, &reader, NULL);
    FUNC28(stream, avpkt->size);
    // Decode the header only.
    ret = !FUNC17(stream, dec, &image);

    if (ret) {
        FUNC1(avctx, AV_LOG_ERROR, "Error decoding codestream header.\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    width  = image->x1 - image->x0;
    height = image->y1 - image->y0;

    ret = FUNC4(avctx, width, height);
    if (ret < 0)
        goto done;

    if (avctx->pix_fmt != AV_PIX_FMT_NONE)
        if (!FUNC12(image, avctx->pix_fmt))
            avctx->pix_fmt = AV_PIX_FMT_NONE;

    if (avctx->pix_fmt == AV_PIX_FMT_NONE)
        avctx->pix_fmt = FUNC10(image);

    if (avctx->pix_fmt == AV_PIX_FMT_NONE) {
        FUNC1(avctx, AV_LOG_ERROR, "Unable to determine pixel format.\n");
        ret = AVERROR_UNKNOWN;
        goto done;
    }
    for (i = 0; i < image->numcomps; i++)
        if (image->comps[i].prec > avctx->bits_per_raw_sample)
            avctx->bits_per_raw_sample = image->comps[i].prec;

    if ((ret = FUNC5(avctx, &frame, 0)) < 0)
        goto done;

    ret = !FUNC14(dec, stream, image);

    if (ret) {
        FUNC1(avctx, AV_LOG_ERROR, "Error decoding codestream.\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    for (i = 0; i < image->numcomps; i++) {
        if (!image->comps[i].data) {
            FUNC1(avctx, AV_LOG_ERROR,
                   "Image component %d contains no data.\n", i);
            ret = AVERROR_INVALIDDATA;
            goto done;
        }
    }

    desc       = FUNC2(avctx->pix_fmt);
    pixel_size = desc->comp[0].step;
    ispacked   = FUNC11(avctx->pix_fmt);

    switch (pixel_size) {
    case 1:
        if (ispacked) {
            FUNC7(picture, image);
        } else {
            FUNC9(picture, image);
        }
        break;
    case 2:
        if (ispacked) {
            FUNC7(picture, image);
        } else {
            FUNC8(picture, image);
        }
        break;
    case 3:
    case 4:
        if (ispacked) {
            FUNC7(picture, image);
        }
        break;
    case 6:
    case 8:
        if (ispacked) {
            FUNC6(picture, image);
        }
        break;
    default:
        FUNC3(avctx, "Pixel size %d", pixel_size);
        ret = AVERROR_PATCHWELCOME;
        goto done;
    }

    *got_frame = 1;
    picture->pict_type = AV_PICTURE_TYPE_I;
    picture->key_frame = 1;
    ret        = buf_size;

done:
    FUNC16(image);
    FUNC23(stream);
    FUNC15(dec);
    return ret;
}