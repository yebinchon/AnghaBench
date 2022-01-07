
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_26__ {scalar_t__ nreschsets; int nchsets; TYPE_1__* chset; } ;
struct TYPE_25__ {int err_recognition; TYPE_3__* priv_data; } ;
struct TYPE_24__ {int size; int * data; } ;
struct TYPE_20__ {int sample_rate; int filter_mode; int frame_size; } ;
struct TYPE_19__ {TYPE_2__* assets; } ;
struct TYPE_23__ {int packet; scalar_t__ core_only; TYPE_11__ core; TYPE_6__ xll; int lbr; TYPE_10__ exss; int * buffer; int buffer_size; } ;
struct TYPE_22__ {int extension_mask; } ;
struct TYPE_21__ {int freq; } ;
typedef TYPE_2__ DCAExssAsset ;
typedef TYPE_3__ DCAContext ;
typedef TYPE_4__ AVPacket ;
typedef int AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_EF_EXPLODE ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_RB32 (int *) ;
 int DCA_EXSS_LBR ;
 int DCA_EXSS_XLL ;
 int DCA_FILTER_MODE_FIXED ;
 int DCA_PACKET_CORE ;
 int DCA_PACKET_EXSS ;
 int DCA_PACKET_LBR ;
 int DCA_PACKET_RECOVERY ;
 int DCA_PACKET_RESIDUAL ;
 int DCA_PACKET_XLL ;
 scalar_t__ DCA_SYNCWORD_CORE_BE ;
 scalar_t__ DCA_SYNCWORD_SUBSTREAM ;
 int EAGAIN ;
 int ENOMEM ;
 int FFALIGN (int ,int) ;
 int MAX_PACKET_SIZE ;
 int MIN_PACKET_SIZE ;
 int av_fast_padded_malloc (int **,int *,int) ;
 int av_log (TYPE_5__*,int ,char*) ;
 int avpriv_dca_convert_bitstream (int *,int,int *,int ) ;
 int ff_dca_core_filter_fixed (TYPE_11__*,int) ;
 int ff_dca_core_filter_frame (TYPE_11__*,int *) ;
 int ff_dca_core_parse (TYPE_11__*,int *,int) ;
 int ff_dca_core_parse_exss (TYPE_11__*,int *,TYPE_2__*) ;
 int ff_dca_exss_parse (TYPE_10__*,int *,int) ;
 int ff_dca_lbr_filter_frame (int *,int *) ;
 int ff_dca_lbr_parse (int *,int *,TYPE_2__*) ;
 int ff_dca_xll_filter_frame (TYPE_6__*,int *) ;
 int ff_dca_xll_parse (TYPE_6__*,int *,TYPE_2__*) ;

__attribute__((used)) static int dcadec_decode_frame(AVCodecContext *avctx, void *data,
                               int *got_frame_ptr, AVPacket *avpkt)
{
    DCAContext *s = avctx->priv_data;
    AVFrame *frame = data;
    uint8_t *input = avpkt->data;
    int input_size = avpkt->size;
    int i, ret, prev_packet = s->packet;
    uint32_t mrk;

    if (input_size < MIN_PACKET_SIZE || input_size > MAX_PACKET_SIZE) {
        av_log(avctx, AV_LOG_ERROR, "Invalid packet size\n");
        return AVERROR_INVALIDDATA;
    }


    mrk = AV_RB32(input);
    if (mrk != DCA_SYNCWORD_CORE_BE && mrk != DCA_SYNCWORD_SUBSTREAM) {
        av_fast_padded_malloc(&s->buffer, &s->buffer_size, input_size);
        if (!s->buffer)
            return AVERROR(ENOMEM);

        for (i = 0, ret = AVERROR_INVALIDDATA; i < input_size - MIN_PACKET_SIZE + 1 && ret < 0; i++)
            ret = avpriv_dca_convert_bitstream(input + i, input_size - i, s->buffer, s->buffer_size);

        if (ret < 0) {
            av_log(avctx, AV_LOG_ERROR, "Not a valid DCA frame\n");
            return ret;
        }

        input = s->buffer;
        input_size = ret;
    }

    s->packet = 0;


    if (AV_RB32(input) == DCA_SYNCWORD_CORE_BE) {
        int frame_size;

        if ((ret = ff_dca_core_parse(&s->core, input, input_size)) < 0)
            return ret;

        s->packet |= DCA_PACKET_CORE;


        frame_size = FFALIGN(s->core.frame_size, 4);
        if (input_size - 4 > frame_size) {
            input += frame_size;
            input_size -= frame_size;
        }
    }

    if (!s->core_only) {
        DCAExssAsset *asset = ((void*)0);


        if (AV_RB32(input) == DCA_SYNCWORD_SUBSTREAM) {
            if ((ret = ff_dca_exss_parse(&s->exss, input, input_size)) < 0) {
                if (avctx->err_recognition & AV_EF_EXPLODE)
                    return ret;
            } else {
                s->packet |= DCA_PACKET_EXSS;
                asset = &s->exss.assets[0];
            }
        }


        if (asset && (asset->extension_mask & DCA_EXSS_XLL)) {
            if ((ret = ff_dca_xll_parse(&s->xll, input, asset)) < 0) {

                if (ret == AVERROR(EAGAIN)
                    && (prev_packet & DCA_PACKET_XLL)
                    && (s->packet & DCA_PACKET_CORE))
                    s->packet |= DCA_PACKET_XLL | DCA_PACKET_RECOVERY;
                else if (ret == AVERROR(ENOMEM) || (avctx->err_recognition & AV_EF_EXPLODE))
                    return ret;
            } else {
                s->packet |= DCA_PACKET_XLL;
            }
        }


        if (asset && (asset->extension_mask & DCA_EXSS_LBR)) {
            if ((ret = ff_dca_lbr_parse(&s->lbr, input, asset)) < 0) {
                if (ret == AVERROR(ENOMEM) || (avctx->err_recognition & AV_EF_EXPLODE))
                    return ret;
            } else {
                s->packet |= DCA_PACKET_LBR;
            }
        }


        if ((s->packet & DCA_PACKET_CORE)
            && (ret = ff_dca_core_parse_exss(&s->core, input, asset)) < 0)
            return ret;
    }


    if (s->packet & DCA_PACKET_LBR) {
        if ((ret = ff_dca_lbr_filter_frame(&s->lbr, frame)) < 0)
            return ret;
    } else if (s->packet & DCA_PACKET_XLL) {
        if (s->packet & DCA_PACKET_CORE) {
            int x96_synth = -1;


            if (s->xll.chset[0].freq == 96000 && s->core.sample_rate == 48000)
                x96_synth = 1;

            if ((ret = ff_dca_core_filter_fixed(&s->core, x96_synth)) < 0)
                return ret;




            if (!(prev_packet & DCA_PACKET_RESIDUAL) && s->xll.nreschsets > 0
                && s->xll.nchsets > 1) {
                av_log(avctx, AV_LOG_VERBOSE, "Forcing XLL recovery mode\n");
                s->packet |= DCA_PACKET_RECOVERY;
            }


            s->packet |= DCA_PACKET_RESIDUAL;
        }

        if ((ret = ff_dca_xll_filter_frame(&s->xll, frame)) < 0) {

            if (!(s->packet & DCA_PACKET_CORE))
                return ret;
            if (ret != AVERROR_INVALIDDATA || (avctx->err_recognition & AV_EF_EXPLODE))
                return ret;
            if ((ret = ff_dca_core_filter_frame(&s->core, frame)) < 0)
                return ret;
        }
    } else if (s->packet & DCA_PACKET_CORE) {
        if ((ret = ff_dca_core_filter_frame(&s->core, frame)) < 0)
            return ret;
        if (s->core.filter_mode & DCA_FILTER_MODE_FIXED)
            s->packet |= DCA_PACKET_RESIDUAL;
    } else {
        av_log(avctx, AV_LOG_ERROR, "No valid DCA sub-stream found\n");
        if (s->core_only)
            av_log(avctx, AV_LOG_WARNING, "Consider disabling 'core_only' option\n");
        return AVERROR_INVALIDDATA;
    }

    *got_frame_ptr = 1;

    return avpkt->size;
}
