
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int size; scalar_t__ data; } ;
struct TYPE_8__ {int channels; int sample_rate; int module; } ;
typedef TYPE_1__ OpenMPTContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AUDIO_PKT_SIZE ;
 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 int av_new_packet (TYPE_2__*,int) ;
 int openmpt_module_read_float_mono (int ,int ,int,float*) ;
 int openmpt_module_read_interleaved_float_quad (int ,int ,int,float*) ;
 int openmpt_module_read_interleaved_float_stereo (int ,int ,int,float*) ;

__attribute__((used)) static int read_packet_openmpt(AVFormatContext *s, AVPacket *pkt)
{
    OpenMPTContext *openmpt = s->priv_data;
    int n_samples = AUDIO_PKT_SIZE / (openmpt->channels ? openmpt->channels*4 : 4);
    int ret;

    if ((ret = av_new_packet(pkt, AUDIO_PKT_SIZE)) < 0)
        return ret;

    switch (openmpt->channels) {
    case 1:
        ret = openmpt_module_read_float_mono(openmpt->module, openmpt->sample_rate,
                                             n_samples, (float *)pkt->data);
        break;
    case 2:
        ret = openmpt_module_read_interleaved_float_stereo(openmpt->module, openmpt->sample_rate,
                                                           n_samples, (float *)pkt->data);
        break;
    case 4:
        ret = openmpt_module_read_interleaved_float_quad(openmpt->module, openmpt->sample_rate,
                                                         n_samples, (float *)pkt->data);
        break;
    default:
        av_log(s, AV_LOG_ERROR, "Unsupported number of channels: %d", openmpt->channels);
        return AVERROR(EINVAL);
    }

    if (ret < 1) {
        pkt->size = 0;
        return AVERROR_EOF;
    }

    pkt->size = ret * (openmpt->channels * 4);

    return 0;
}
