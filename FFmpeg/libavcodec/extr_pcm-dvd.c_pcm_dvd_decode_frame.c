
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {TYPE_1__* priv_data; } ;
struct TYPE_14__ {int nb_samples; void** data; } ;
struct TYPE_13__ {int size; int * data; } ;
struct TYPE_12__ {int last_block_size; int block_size; int extra_sample_count; int samples_per_block; int const* extra_samples; } ;
typedef TYPE_1__ PCMDVDContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int memcpy (int const*,int const*,int) ;
 void* pcm_dvd_decode_samples (TYPE_4__*,int const*,void*,int) ;
 int pcm_dvd_parse_header (TYPE_4__*,int const*) ;

__attribute__((used)) static int pcm_dvd_decode_frame(AVCodecContext *avctx, void *data,
                                int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame = data;
    const uint8_t *src = avpkt->data;
    int buf_size = avpkt->size;
    PCMDVDContext *s = avctx->priv_data;
    int retval;
    int blocks;
    void *dst;

    if (buf_size < 3) {
        av_log(avctx, AV_LOG_ERROR, "PCM packet too small\n");
        return AVERROR_INVALIDDATA;
    }

    if ((retval = pcm_dvd_parse_header(avctx, src)))
        return retval;
    if (s->last_block_size && s->last_block_size != s->block_size) {
        av_log(avctx, AV_LOG_WARNING, "block_size has changed %d != %d\n", s->last_block_size, s->block_size);
        s->extra_sample_count = 0;
    }
    s->last_block_size = s->block_size;
    src += 3;
    buf_size -= 3;

    blocks = (buf_size + s->extra_sample_count) / s->block_size;


    frame->nb_samples = blocks * s->samples_per_block;
    if ((retval = ff_get_buffer(avctx, frame, 0)) < 0)
        return retval;
    dst = frame->data[0];


    if (s->extra_sample_count) {
        int missing_samples = s->block_size - s->extra_sample_count;
        if (buf_size >= missing_samples) {
            memcpy(s->extra_samples + s->extra_sample_count, src,
                   missing_samples);
            dst = pcm_dvd_decode_samples(avctx, s->extra_samples, dst, 1);
            src += missing_samples;
            buf_size -= missing_samples;
            s->extra_sample_count = 0;
            blocks--;
        } else {

            memcpy(s->extra_samples + s->extra_sample_count, src, buf_size);
            s->extra_sample_count += buf_size;
            return avpkt->size;
        }
    }


    if (blocks) {
        pcm_dvd_decode_samples(avctx, src, dst, blocks);
        buf_size -= blocks * s->block_size;
    }


    if (buf_size) {
        src += blocks * s->block_size;
        memcpy(s->extra_samples, src, buf_size);
        s->extra_sample_count = buf_size;
    }

    *got_frame_ptr = 1;

    return avpkt->size;
}
