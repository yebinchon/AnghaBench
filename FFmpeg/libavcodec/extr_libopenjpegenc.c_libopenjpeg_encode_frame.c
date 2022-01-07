
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


typedef int opj_stream_t ;
typedef int opj_image_t ;
typedef int opj_codec_t ;
struct TYPE_35__ {int pix_fmt; TYPE_2__* priv_data; } ;
struct TYPE_34__ {int * linesize; int * data; } ;
struct TYPE_33__ {int flags; } ;
struct TYPE_32__ {int enc_params; int format; } ;
struct TYPE_31__ {int pos; TYPE_3__* packet; int member_0; } ;
typedef TYPE_1__ PacketWriter ;
typedef TYPE_2__ LibOpenJPEGContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ const AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_KEY ;
 int EINVAL ;
 int ENOMEM ;
 int OPJ_STREAM_WRITE ;
 TYPE_4__ const* av_frame_clone (TYPE_4__ const*) ;
 int av_frame_free (TYPE_4__ const**) ;
 int av_get_pix_fmt_name (int const) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int av_shrink_packet (TYPE_3__*,int ) ;
 int error_callback ;
 int ff_alloc_packet2 (TYPE_5__*,TYPE_3__*,int,int ) ;
 int info_callback ;
 int libopenjpeg_copy_packed12 (TYPE_5__*,TYPE_4__ const*,int *) ;
 int libopenjpeg_copy_packed16 (TYPE_5__*,TYPE_4__ const*,int *) ;
 int libopenjpeg_copy_packed8 (TYPE_5__*,TYPE_4__ const*,int *) ;
 int libopenjpeg_copy_unpacked16 (TYPE_5__*,TYPE_4__ const*,int *) ;
 int libopenjpeg_copy_unpacked8 (TYPE_5__*,TYPE_4__ const*,int *) ;
 int * mj2_create_image (TYPE_5__*,int *) ;
 int * opj_create_compress (int ) ;
 int opj_destroy_codec (int *) ;
 int opj_encode (int *,int *) ;
 int opj_end_compress (int *,int *) ;
 int opj_image_destroy (int *) ;
 int opj_set_error_handler (int *,int ,TYPE_5__*) ;
 int opj_set_info_handler (int *,int ,TYPE_5__*) ;
 int opj_set_warning_handler (int *,int ,TYPE_5__*) ;
 int opj_setup_encoder (int *,int *,int *) ;
 int opj_start_compress (int *,int *,int *) ;
 int * opj_stream_default_create (int ) ;
 int opj_stream_destroy (int *) ;
 int opj_stream_set_seek_function (int *,int ) ;
 int opj_stream_set_skip_function (int *,int ) ;
 int opj_stream_set_user_data (int *,TYPE_1__*,int *) ;
 int opj_stream_set_write_function (int *,int ) ;
 int stream_seek ;
 int stream_skip ;
 int stream_write ;
 int warning_callback ;

__attribute__((used)) static int libopenjpeg_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                                    const AVFrame *frame, int *got_packet)
{
    LibOpenJPEGContext *ctx = avctx->priv_data;
    int ret;
    AVFrame *gbrframe;
    int cpyresult = 0;
    PacketWriter writer = { 0 };
    opj_codec_t *compress = ((void*)0);
    opj_stream_t *stream = ((void*)0);
    opj_image_t *image = mj2_create_image(avctx, &ctx->enc_params);
    if (!image) {
        av_log(avctx, AV_LOG_ERROR, "Error creating the mj2 image\n");
        ret = AVERROR(EINVAL);
        goto done;
    }

    switch (avctx->pix_fmt) {
    case 167:
    case 165:
    case 161:
        cpyresult = libopenjpeg_copy_packed8(avctx, frame, image);
        break;
    case 163:
        cpyresult = libopenjpeg_copy_packed12(avctx, frame, image);
        break;
    case 166:
    case 164:
    case 162:
        cpyresult = libopenjpeg_copy_packed16(avctx, frame, image);
        break;
    case 178:
    case 173:
    case 177:
    case 176:
    case 175:
    case 174:
        gbrframe = av_frame_clone(frame);
        if (!gbrframe) {
            ret = AVERROR(ENOMEM);
            goto done;
        }
        gbrframe->data[0] = frame->data[2];
        gbrframe->data[1] = frame->data[0];
        gbrframe->data[2] = frame->data[1];
        gbrframe->linesize[0] = frame->linesize[2];
        gbrframe->linesize[1] = frame->linesize[0];
        gbrframe->linesize[2] = frame->linesize[1];
        if (avctx->pix_fmt == 178) {
            cpyresult = libopenjpeg_copy_unpacked8(avctx, gbrframe, image);
        } else {
            cpyresult = libopenjpeg_copy_unpacked16(avctx, gbrframe, image);
        }
        av_frame_free(&gbrframe);
        break;
    case 168:
    case 160:
    case 159:
    case 158:
    case 152:
    case 146:
    case 145:
    case 139:
    case 135:
    case 131:
        cpyresult = libopenjpeg_copy_unpacked8(avctx, frame, image);
        break;
    case 172:
    case 171:
    case 170:
    case 169:
    case 153:
    case 147:
    case 140:
    case 136:
    case 132:
    case 128:
    case 144:
    case 151:
    case 157:
    case 130:
    case 134:
    case 138:
    case 156:
    case 150:
    case 143:
    case 155:
    case 149:
    case 142:
    case 141:
    case 148:
    case 154:
    case 129:
    case 133:
    case 137:
        cpyresult = libopenjpeg_copy_unpacked16(avctx, frame, image);
        break;
    default:
        av_log(avctx, AV_LOG_ERROR,
               "The frame's pixel format '%s' is not supported\n",
               av_get_pix_fmt_name(avctx->pix_fmt));
        ret = AVERROR(EINVAL);
        goto done;
        break;
    }

    if (!cpyresult) {
        av_log(avctx, AV_LOG_ERROR,
               "Could not copy the frame data to the internal image buffer\n");
        ret = -1;
        goto done;
    }

    if ((ret = ff_alloc_packet2(avctx, pkt, 1024, 0)) < 0) {
        goto done;
    }

    compress = opj_create_compress(ctx->format);
    if (!compress) {
        av_log(avctx, AV_LOG_ERROR, "Error creating the compressor\n");
        ret = AVERROR(ENOMEM);
        goto done;
    }

    if (!opj_set_error_handler(compress, error_callback, avctx) ||
        !opj_set_warning_handler(compress, warning_callback, avctx) ||
        !opj_set_info_handler(compress, info_callback, avctx)) {
        av_log(avctx, AV_LOG_ERROR, "Error setting the compressor handlers\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    if (!opj_setup_encoder(compress, &ctx->enc_params, image)) {
        av_log(avctx, AV_LOG_ERROR, "Error setting up the compressor\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }
    stream = opj_stream_default_create(OPJ_STREAM_WRITE);

    if (!stream) {
        av_log(avctx, AV_LOG_ERROR, "Error creating the cio stream\n");
        ret = AVERROR(ENOMEM);
        goto done;
    }

    writer.packet = pkt;
    opj_stream_set_write_function(stream, stream_write);
    opj_stream_set_skip_function(stream, stream_skip);
    opj_stream_set_seek_function(stream, stream_seek);
    opj_stream_set_user_data(stream, &writer, ((void*)0));

    if (!opj_start_compress(compress, image, stream) ||
        !opj_encode(compress, stream) ||
        !opj_end_compress(compress, stream)) {
        av_log(avctx, AV_LOG_ERROR, "Error during the opj encode\n");
        ret = AVERROR_EXTERNAL;
        goto done;
    }

    av_shrink_packet(pkt, writer.pos);

    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;
    ret = 0;

done:
    opj_stream_destroy(stream);
    opj_destroy_codec(compress);
    opj_image_destroy(image);
    return ret;
}
