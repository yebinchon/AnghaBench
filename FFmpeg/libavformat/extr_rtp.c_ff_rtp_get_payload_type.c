
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_10__ {scalar_t__ pt; scalar_t__ codec_id; scalar_t__ clock_rate; scalar_t__ audio_channels; } ;
struct TYPE_9__ {scalar_t__ codec_id; int sample_rate; int channels; scalar_t__ codec_type; } ;
struct TYPE_8__ {scalar_t__ priv_data; TYPE_1__* oformat; } ;
struct TYPE_7__ {scalar_t__ priv_class; } ;
typedef TYPE_1__ AVOutputFormat ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AV_CODEC_ID_ADPCM_G722 ;
 scalar_t__ AV_CODEC_ID_H263 ;
 int RTP_PT_PRIVATE ;
 int av_opt_flag_is_set (scalar_t__,char*,char*) ;
 scalar_t__ av_opt_get_int (scalar_t__,char*,int ,scalar_t__*) ;
 TYPE_4__* rtp_payload_types ;

int ff_rtp_get_payload_type(AVFormatContext *fmt,
                            AVCodecParameters *par, int idx)
{
    int i;
    const AVOutputFormat *ofmt = fmt ? fmt->oformat : ((void*)0);


    if (ofmt && ofmt->priv_class && fmt->priv_data) {
        int64_t payload_type;
        if (av_opt_get_int(fmt->priv_data, "payload_type", 0, &payload_type) >= 0 &&
            payload_type >= 0)
            return (int)payload_type;
    }


    for (i = 0; rtp_payload_types[i].pt >= 0; ++i)
        if (rtp_payload_types[i].codec_id == par->codec_id) {
            if (par->codec_id == AV_CODEC_ID_H263 && (!fmt || !fmt->oformat ||
                !fmt->oformat->priv_class || !fmt->priv_data ||
                !av_opt_flag_is_set(fmt->priv_data, "rtpflags", "rfc2190")))
                continue;


            if (par->codec_id == AV_CODEC_ID_ADPCM_G722 &&
                par->sample_rate == 16000 && par->channels == 1)
                return rtp_payload_types[i].pt;
            if (par->codec_type == AVMEDIA_TYPE_AUDIO &&
                ((rtp_payload_types[i].clock_rate > 0 &&
                  par->sample_rate != rtp_payload_types[i].clock_rate) ||
                 (rtp_payload_types[i].audio_channels > 0 &&
                  par->channels != rtp_payload_types[i].audio_channels)))
                continue;
            return rtp_payload_types[i].pt;
        }

    if (idx < 0)
        idx = par->codec_type == AVMEDIA_TYPE_AUDIO;


    return RTP_PT_PRIVATE + idx;
}
