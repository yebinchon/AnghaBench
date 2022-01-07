
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_18__ {scalar_t__ length; int bytes; } ;
struct TYPE_19__ {TYPE_4__ extradata; } ;
struct TYPE_20__ {TYPE_5__ config; } ;
struct TYPE_16__ {int samplerate; } ;
struct TYPE_17__ {TYPE_2__ out; } ;
struct TYPE_21__ {TYPE_6__ priv; TYPE_3__ config; } ;
typedef TYPE_7__ hb_audio_t ;
struct TYPE_15__ {int num; int den; } ;
struct TYPE_22__ {int par_in; TYPE_1__ time_base_in; } ;
typedef int AVPacket ;
typedef int AVCodecContext ;
typedef int AVBitStreamFilter ;
typedef TYPE_8__ AVBSFContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_PKT_DATA_NEW_EXTRADATA ;
 int EAGAIN ;
 int HB_CONFIG_MAX_SIZE ;
 int MIN (int,int ) ;
 int av_bsf_alloc (int const*,TYPE_8__**) ;
 int av_bsf_free (TYPE_8__**) ;
 int * av_bsf_get_by_name (char*) ;
 int av_bsf_init (TYPE_8__*) ;
 int av_bsf_receive_packet (TYPE_8__*,int *) ;
 int av_bsf_send_packet (TYPE_8__*,int *) ;
 int * av_packet_get_side_data (int *,int ,int*) ;
 int avcodec_parameters_from_context (int ,int *) ;
 int hb_error (char*,...) ;
 int memcpy (int ,int const*,int) ;

__attribute__((used)) static int parse_adts_extradata( hb_audio_t * audio, AVCodecContext * context,
                                 AVPacket * pkt )
{
    const AVBitStreamFilter * bsf;
    AVBSFContext * ctx = ((void*)0);
    int ret;

    bsf = av_bsf_get_by_name("aac_adtstoasc");
    ret = av_bsf_alloc(bsf, &ctx);
    if (ret < 0)
    {
        hb_error("decavcodec: bitstream filter alloc failure");
        return ret;
    }
    ctx->time_base_in.num = 1;
    ctx->time_base_in.den = audio->config.out.samplerate;
    avcodec_parameters_from_context(ctx->par_in, context);
    ret = av_bsf_init(ctx);
    if (ret < 0)
    {
        hb_error("decavcodec: bitstream filter init failure");
        av_bsf_free(&ctx);
        return ret;
    }

    ret = av_bsf_send_packet(ctx, pkt);
    if (ret < 0)
    {
        hb_error("decavcodec: av_bsf_send_packet failure");
        av_bsf_free(&ctx);
        return ret;
    }

    ret = av_bsf_receive_packet(ctx, pkt);
    av_bsf_free(&ctx);
    if (ret == AVERROR(EAGAIN) || ret == AVERROR_EOF)
    {
        return 0;
    }
    else if (ret < 0)
    {
        if (ret != AVERROR_INVALIDDATA)
        {
            hb_error("decavcodec: av_bsf_receive_packet failure %x", -ret);
        }
        return ret;
    }

    if (audio->priv.config.extradata.length == 0)
    {
        const uint8_t * extradata;
        int size;

        extradata = av_packet_get_side_data(pkt, AV_PKT_DATA_NEW_EXTRADATA,
                                            &size);
        if (extradata != ((void*)0) && size > 0)
        {
            int len;
            len = MIN(size, HB_CONFIG_MAX_SIZE);
            memcpy(audio->priv.config.extradata.bytes, extradata, len);
            audio->priv.config.extradata.length = len;
        }
    }

    return 0;
}
