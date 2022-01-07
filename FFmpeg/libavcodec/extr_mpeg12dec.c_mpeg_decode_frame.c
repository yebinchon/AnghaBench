
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_20__ {int extradata_size; int err_recognition; int const* extradata; int codec_tag; TYPE_4__* priv_data; } ;
struct TYPE_19__ {int data; } ;
struct TYPE_18__ {int size; int * data; } ;
struct TYPE_16__ {scalar_t__ low_delay; scalar_t__ codec_tag; int timecode_frame_start; int * current_picture_ptr; int parse_context; TYPE_2__* avctx; TYPE_1__* next_picture_ptr; } ;
struct TYPE_17__ {scalar_t__ mpeg_enc_ctx_allocated; int extradata_decoded; scalar_t__ slice_count; TYPE_3__ mpeg_enc_ctx; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_14__ {int f; } ;
typedef TYPE_3__ MpegEncContext ;
typedef TYPE_4__ Mpeg1Context ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVFrameSideData ;
typedef int AVFrame ;
typedef TYPE_7__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_CODEC_FLAG_TRUNCATED ;
 int AV_EF_EXPLODE ;
 int AV_FRAME_DATA_GOP_TIMECODE ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_RB32 (int const*) ;
 scalar_t__ AV_RL32 (char*) ;
 int ENOMEM ;
 scalar_t__ SEQ_END_CODE ;
 TYPE_6__* av_frame_new_side_data (int *,int ,int) ;
 int av_frame_ref (int *,int ) ;
 int av_frame_unref (int *) ;
 int av_log (TYPE_7__*,int ,char*) ;
 scalar_t__ avpriv_toupper4 (int ) ;
 int decode_chunks (TYPE_7__*,int *,int*,int const*,int) ;
 scalar_t__ ff_combine_frame (int *,int,int const**,int*) ;
 int ff_mpeg1_find_frame_end (int *,int const*,int,int *) ;
 int memcpy (int ,int*,int) ;
 int vcr2_init_sequence (TYPE_7__*) ;

__attribute__((used)) static int mpeg_decode_frame(AVCodecContext *avctx, void *data,
                             int *got_output, AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int ret;
    int buf_size = avpkt->size;
    Mpeg1Context *s = avctx->priv_data;
    AVFrame *picture = data;
    MpegEncContext *s2 = &s->mpeg_enc_ctx;

    if (buf_size == 0 || (buf_size == 4 && AV_RB32(buf) == SEQ_END_CODE)) {

        if (s2->low_delay == 0 && s2->next_picture_ptr) {
            int ret = av_frame_ref(picture, s2->next_picture_ptr->f);
            if (ret < 0)
                return ret;

            s2->next_picture_ptr = ((void*)0);

            *got_output = 1;
        }
        return buf_size;
    }

    if (s2->avctx->flags & AV_CODEC_FLAG_TRUNCATED) {
        int next = ff_mpeg1_find_frame_end(&s2->parse_context, buf,
                                           buf_size, ((void*)0));

        if (ff_combine_frame(&s2->parse_context, next,
                             (const uint8_t **) &buf, &buf_size) < 0)
            return buf_size;
    }

    s2->codec_tag = avpriv_toupper4(avctx->codec_tag);
    if (s->mpeg_enc_ctx_allocated == 0 && ( s2->codec_tag == AV_RL32("VCR2")
                                           || s2->codec_tag == AV_RL32("BW10")
                                          ))
        vcr2_init_sequence(avctx);

    s->slice_count = 0;

    if (avctx->extradata && !s->extradata_decoded) {
        ret = decode_chunks(avctx, picture, got_output,
                            avctx->extradata, avctx->extradata_size);
        if (*got_output) {
            av_log(avctx, AV_LOG_ERROR, "picture in extradata\n");
            av_frame_unref(picture);
            *got_output = 0;
        }
        s->extradata_decoded = 1;
        if (ret < 0 && (avctx->err_recognition & AV_EF_EXPLODE)) {
            s2->current_picture_ptr = ((void*)0);
            return ret;
        }
    }

    ret = decode_chunks(avctx, picture, got_output, buf, buf_size);
    if (ret<0 || *got_output) {
        s2->current_picture_ptr = ((void*)0);

        if (s2->timecode_frame_start != -1 && *got_output) {
            AVFrameSideData *tcside = av_frame_new_side_data(picture,
                                                             AV_FRAME_DATA_GOP_TIMECODE,
                                                             sizeof(int64_t));
            if (!tcside)
                return AVERROR(ENOMEM);
            memcpy(tcside->data, &s2->timecode_frame_start, sizeof(int64_t));

            s2->timecode_frame_start = -1;
        }
    }

    return ret;
}
