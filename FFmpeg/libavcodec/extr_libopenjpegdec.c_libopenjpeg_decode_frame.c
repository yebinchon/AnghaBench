
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_9__ ;
typedef struct TYPE_46__ TYPE_8__ ;
typedef struct TYPE_45__ TYPE_7__ ;
typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_2__ ;
typedef struct TYPE_39__ TYPE_1__ ;
typedef struct TYPE_38__ TYPE_12__ ;
typedef struct TYPE_37__ TYPE_10__ ;


typedef char uint8_t ;
typedef int opj_stream_t ;
struct TYPE_41__ {int x1; int x0; int y1; int y0; int numcomps; TYPE_1__* comps; } ;
typedef TYPE_3__ opj_image_t ;
typedef int opj_codec_t ;
struct TYPE_42__ {void* f; } ;
typedef TYPE_4__ ThreadFrame ;
struct TYPE_47__ {int key_frame; int pict_type; } ;
struct TYPE_46__ {char* data; int size; } ;
struct TYPE_45__ {TYPE_2__* comp; } ;
struct TYPE_44__ {int member_1; char* member_2; int member_0; } ;
struct TYPE_38__ {int cp_reduce; int cp_layer; } ;
struct TYPE_43__ {TYPE_12__ dec_params; int lowqual; } ;
struct TYPE_40__ {int step; } ;
struct TYPE_39__ {scalar_t__ prec; int data; } ;
struct TYPE_37__ {scalar_t__ bits_per_raw_sample; int pix_fmt; int lowres; TYPE_5__* priv_data; } ;
typedef TYPE_5__ LibOpenJPEGContext ;
typedef TYPE_6__ BufferReader ;
typedef TYPE_7__ AVPixFmtDescriptor ;
typedef TYPE_8__ AVPacket ;
typedef TYPE_9__ AVFrame ;
typedef TYPE_10__ AVCodecContext ;


 int AVERROR_EXTERNAL ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int AV_PIX_FMT_NONE ;
 int AV_RB32 (char*) ;
 int JP2_SIG_TYPE ;
 int JP2_SIG_VALUE ;
 int OPJ_CODEC_J2K ;
 int OPJ_CODEC_JP2 ;
 int OPJ_STREAM_READ ;
 int av_log (TYPE_10__*,int ,char*,...) ;
 TYPE_7__* av_pix_fmt_desc_get (int ) ;
 int avpriv_report_missing_feature (TYPE_10__*,char*,int) ;
 int error_callback ;
 int ff_set_dimensions (TYPE_10__*,int,int) ;
 int ff_thread_get_buffer (TYPE_10__*,TYPE_4__*,int ) ;
 int info_callback ;
 int libopenjpeg_copy_to_packed16 (TYPE_9__*,TYPE_3__*) ;
 int libopenjpeg_copy_to_packed8 (TYPE_9__*,TYPE_3__*) ;
 int libopenjpeg_copyto16 (TYPE_9__*,TYPE_3__*) ;
 int libopenjpeg_copyto8 (TYPE_9__*,TYPE_3__*) ;
 int libopenjpeg_guess_pix_fmt (TYPE_3__*) ;
 int libopenjpeg_ispacked (int ) ;
 int libopenjpeg_matches_pix_fmt (TYPE_3__*,int ) ;
 int * opj_create_decompress (int ) ;
 int opj_decode (int *,int *,TYPE_3__*) ;
 int opj_destroy_codec (int *) ;
 int opj_image_destroy (TYPE_3__*) ;
 int opj_read_header (int *,int *,TYPE_3__**) ;
 int opj_set_error_handler (int *,int ,TYPE_10__*) ;
 int opj_set_info_handler (int *,int ,TYPE_10__*) ;
 int opj_set_warning_handler (int *,int ,TYPE_10__*) ;
 int opj_setup_decoder (int *,TYPE_12__*) ;
 int * opj_stream_default_create (int ) ;
 int opj_stream_destroy (int *) ;
 int opj_stream_set_read_function (int *,int ) ;
 int opj_stream_set_seek_function (int *,int ) ;
 int opj_stream_set_skip_function (int *,int ) ;
 int opj_stream_set_user_data (int *,TYPE_6__*,int *) ;
 int opj_stream_set_user_data_length (int *,int) ;
 int stream_read ;
 int stream_seek ;
 int stream_skip ;
 int warning_callback ;

__attribute__((used)) static int libopenjpeg_decode_frame(AVCodecContext *avctx,
                                    void *data, int *got_frame,
                                    AVPacket *avpkt)
{
    uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    LibOpenJPEGContext *ctx = avctx->priv_data;
    ThreadFrame frame = { .f = data };
    AVFrame *picture = data;
    const AVPixFmtDescriptor *desc;
    int width, height, ret;
    int pixel_size = 0;
    int ispacked = 0;
    int i;
    opj_image_t *image = ((void*)0);
    BufferReader reader = {0, avpkt->size, avpkt->data};
    opj_codec_t *dec = ((void*)0);
    opj_stream_t *stream = ((void*)0);

    *got_frame = 0;


    if ((AV_RB32(buf) == 12) &&
        (AV_RB32(buf + 4) == JP2_SIG_TYPE) &&
        (AV_RB32(buf + 8) == JP2_SIG_VALUE)) {
        dec = opj_create_decompress(OPJ_CODEC_JP2);
    } else {


        if (AV_RB32(buf + 4) == AV_RB32("jp2c"))
            buf += 8;
        dec = opj_create_decompress(OPJ_CODEC_J2K);
    }

    if (!dec) {
        av_log(avctx, AV_LOG_ERROR, "Error initializing decoder.\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    if (!opj_set_error_handler(dec, error_callback, avctx) ||
        !opj_set_warning_handler(dec, warning_callback, avctx) ||
        !opj_set_info_handler(dec, info_callback, avctx)) {
        av_log(avctx, AV_LOG_ERROR, "Error setting decoder handlers.\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    ctx->dec_params.cp_layer = ctx->lowqual;
    ctx->dec_params.cp_reduce = avctx->lowres;


    opj_setup_decoder(dec, &ctx->dec_params);

    stream = opj_stream_default_create(OPJ_STREAM_READ);

    if (!stream) {
        av_log(avctx, AV_LOG_ERROR,
               "Codestream could not be opened for reading.\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    opj_stream_set_read_function(stream, stream_read);
    opj_stream_set_skip_function(stream, stream_skip);
    opj_stream_set_seek_function(stream, stream_seek);
    opj_stream_set_user_data(stream, &reader, ((void*)0));
    opj_stream_set_user_data_length(stream, avpkt->size);

    ret = !opj_read_header(stream, dec, &image);

    if (ret) {
        av_log(avctx, AV_LOG_ERROR, "Error decoding codestream header.\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    width = image->x1 - image->x0;
    height = image->y1 - image->y0;

    ret = ff_set_dimensions(avctx, width, height);
    if (ret < 0)
        goto done;

    if (avctx->pix_fmt != AV_PIX_FMT_NONE)
        if (!libopenjpeg_matches_pix_fmt(image, avctx->pix_fmt))
            avctx->pix_fmt = AV_PIX_FMT_NONE;

    if (avctx->pix_fmt == AV_PIX_FMT_NONE)
        avctx->pix_fmt = libopenjpeg_guess_pix_fmt(image);

    if (avctx->pix_fmt == AV_PIX_FMT_NONE) {
        av_log(avctx, AV_LOG_ERROR, "Unable to determine pixel format.\n");
        ret = AVERROR_UNKNOWN;
        goto done;
    }
    for (i = 0; i < image->numcomps; i++)
        if (image->comps[i].prec > avctx->bits_per_raw_sample)
            avctx->bits_per_raw_sample = image->comps[i].prec;

    if ((ret = ff_thread_get_buffer(avctx, &frame, 0)) < 0)
        goto done;

    ret = !opj_decode(dec, stream, image);

    if (ret) {
        av_log(avctx, AV_LOG_ERROR, "Error decoding codestream.\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    for (i = 0; i < image->numcomps; i++) {
        if (!image->comps[i].data) {
            av_log(avctx, AV_LOG_ERROR,
                   "Image component %d contains no data.\n", i);
            ret = AVERROR_INVALIDDATA;
            goto done;
        }
    }

    desc = av_pix_fmt_desc_get(avctx->pix_fmt);
    pixel_size = desc->comp[0].step;
    ispacked = libopenjpeg_ispacked(avctx->pix_fmt);

    switch (pixel_size) {
    case 1:
        if (ispacked) {
            libopenjpeg_copy_to_packed8(picture, image);
        } else {
            libopenjpeg_copyto8(picture, image);
        }
        break;
    case 2:
        if (ispacked) {
            libopenjpeg_copy_to_packed8(picture, image);
        } else {
            libopenjpeg_copyto16(picture, image);
        }
        break;
    case 3:
    case 4:
        if (ispacked) {
            libopenjpeg_copy_to_packed8(picture, image);
        }
        break;
    case 6:
    case 8:
        if (ispacked) {
            libopenjpeg_copy_to_packed16(picture, image);
        }
        break;
    default:
        avpriv_report_missing_feature(avctx, "Pixel size %d", pixel_size);
        ret = AVERROR_PATCHWELCOME;
        goto done;
    }

    *got_frame = 1;
    picture->pict_type = AV_PICTURE_TYPE_I;
    picture->key_frame = 1;
    ret = buf_size;

done:
    opj_image_destroy(image);
    opj_stream_destroy(stream);
    opj_destroy_codec(dec);
    return ret;
}
