
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pt; scalar_t__ codec_id; scalar_t__ audio_channels; scalar_t__ clock_rate; int codec_type; } ;
struct TYPE_4__ {scalar_t__ codec_id; scalar_t__ channels; scalar_t__ sample_rate; int codec_type; } ;
typedef TYPE_1__ AVCodecParameters ;


 scalar_t__ AV_CODEC_ID_NONE ;
 TYPE_2__* rtp_payload_types ;

int ff_rtp_get_codec_info(AVCodecParameters *par, int payload_type)
{
    int i = 0;

    for (i = 0; rtp_payload_types[i].pt >= 0; i++)
        if (rtp_payload_types[i].pt == payload_type) {
            if (rtp_payload_types[i].codec_id != AV_CODEC_ID_NONE) {
                par->codec_type = rtp_payload_types[i].codec_type;
                par->codec_id = rtp_payload_types[i].codec_id;
                if (rtp_payload_types[i].audio_channels > 0)
                    par->channels = rtp_payload_types[i].audio_channels;
                if (rtp_payload_types[i].clock_rate > 0)
                    par->sample_rate = rtp_payload_types[i].clock_rate;
                return 0;
            }
        }
    return -1;
}
