
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_21__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_34__ {scalar_t__ pts; int discard; int scr_sequence; scalar_t__ size; int * data; } ;
typedef TYPE_5__ packet_info_t ;
typedef scalar_t__ int64_t ;
struct TYPE_35__ {scalar_t__ next_pts; int duration; scalar_t__ drop_samples; int nframes; TYPE_21__* frame; int list; TYPE_4__* audio; int resample; int decode_errors; TYPE_11__* context; } ;
typedef TYPE_6__ hb_work_private_t ;
struct TYPE_29__ {scalar_t__ start; double duration; scalar_t__ stop; int scr_sequence; } ;
struct TYPE_36__ {int size; TYPE_1__ s; scalar_t__ data; } ;
typedef TYPE_7__ hb_buffer_t ;
struct TYPE_38__ {scalar_t__ data; } ;
struct TYPE_37__ {scalar_t__ pts; int flags; scalar_t__ size; int * data; scalar_t__ dts; } ;
struct TYPE_31__ {int codec; scalar_t__ mixdown; long samplerate; } ;
struct TYPE_32__ {TYPE_2__ out; } ;
struct TYPE_33__ {TYPE_3__ config; } ;
struct TYPE_30__ {int sample_rate; int nb_samples; scalar_t__ pts; scalar_t__ channel_layout; scalar_t__ extended_data; int format; int channels; } ;
struct TYPE_28__ {int sample_rate; } ;
struct TYPE_27__ {double surround_mix_level_ltrt; double center_mix_level_ltrt; double surround_mix_level; double center_mix_level; int lfe_mix_level; } ;
typedef TYPE_8__ AVPacket ;
typedef TYPE_9__ AVFrameSideData ;
typedef TYPE_10__ AVDownmixInfo ;
typedef TYPE_11__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_FRAME_DATA_DOWNMIX_INFO ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_PKT_FLAG_DISCARD ;
 int EAGAIN ;
 int HB_ACODEC_PASS_FLAG ;
 scalar_t__ HB_AMIXDOWN_DOLBY ;
 scalar_t__ HB_AMIXDOWN_DOLBYPLII ;
 TYPE_9__* av_frame_get_side_data (TYPE_21__*,int ) ;
 int av_frame_unref (TYPE_21__*) ;
 scalar_t__ av_get_default_channel_layout (int ) ;
 int av_init_packet (TYPE_8__*) ;
 int av_packet_unref (TYPE_8__*) ;
 int avcodec_receive_frame (TYPE_11__*,TYPE_21__*) ;
 int avcodec_send_packet (TYPE_11__*,TYPE_8__*) ;
 TYPE_7__* hb_audio_resample (int ,int const**,int) ;
 int hb_audio_resample_set_channel_layout (int ,scalar_t__) ;
 int hb_audio_resample_set_mix_levels (int ,double,double,int ) ;
 int hb_audio_resample_set_sample_fmt (int ,int ) ;
 int hb_audio_resample_set_sample_rate (int ,int) ;
 scalar_t__ hb_audio_resample_update (int ) ;
 int hb_buffer_close (TYPE_7__**) ;
 TYPE_7__* hb_buffer_init (scalar_t__) ;
 int hb_buffer_list_append (int *,TYPE_7__*) ;
 int hb_log (char*) ;
 int hb_mixdown_get_discrete_channel_count (scalar_t__) ;
 int memcpy (scalar_t__,int *,scalar_t__) ;
 int memmove (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void decodeAudio(hb_work_private_t *pv, packet_info_t * packet_info)
{
    AVCodecContext * context = pv->context;
    AVPacket avp;
    int ret;



    if (pv->next_pts == (int64_t)AV_NOPTS_VALUE &&
        packet_info != ((void*)0) &&
        packet_info->pts != AV_NOPTS_VALUE)
    {
        pv->next_pts = packet_info->pts;
    }
    av_init_packet(&avp);
    if (packet_info != ((void*)0))
    {
        avp.data = packet_info->data;
        avp.size = packet_info->size;
        avp.pts = packet_info->pts;
        avp.dts = AV_NOPTS_VALUE;
        avp.flags |= packet_info->discard * AV_PKT_FLAG_DISCARD;
    }
    else
    {
        avp.data = ((void*)0);
        avp.size = 0;
    }

    ret = avcodec_send_packet(context, &avp);
    if (ret < 0 && ret != AVERROR_EOF)
    {
        av_packet_unref(&avp);
        return;
    }

    do
    {
        ret = avcodec_receive_frame(context, pv->frame);
        if (ret < 0 && ret != AVERROR(EAGAIN) && ret != AVERROR_EOF)
        {
            ++pv->decode_errors;
        }
        if (ret < 0)
        {
            break;
        }

        hb_buffer_t * out;
        int samplerate;


        if (pv->frame->sample_rate != 0)
        {
            samplerate = pv->frame->sample_rate;
        }
        else
        {
            samplerate = context->sample_rate;
        }
        pv->duration = (90000. * pv->frame->nb_samples / samplerate);

        int64_t pts = pv->frame->pts;
        double duration = pv->duration;

        if (pv->audio->config.out.codec & HB_ACODEC_PASS_FLAG)
        {



            out = hb_buffer_init(avp.size);
            memcpy(out->data, avp.data, avp.size);
        }
        else
        {
            AVFrameSideData *side_data;
            uint64_t channel_layout;
            if ((side_data =
                 av_frame_get_side_data(pv->frame,
                                AV_FRAME_DATA_DOWNMIX_INFO)) != ((void*)0))
            {
                double surround_mix_level, center_mix_level;
                AVDownmixInfo * downmix_info;

                downmix_info = (AVDownmixInfo*)side_data->data;
                if (pv->audio->config.out.mixdown == HB_AMIXDOWN_DOLBY ||
                    pv->audio->config.out.mixdown == HB_AMIXDOWN_DOLBYPLII)
                {
                    surround_mix_level = downmix_info->surround_mix_level_ltrt;
                    center_mix_level = downmix_info->center_mix_level_ltrt;
                }
                else
                {
                    surround_mix_level = downmix_info->surround_mix_level;
                    center_mix_level = downmix_info->center_mix_level;
                }
                hb_audio_resample_set_mix_levels(pv->resample,
                                                 surround_mix_level,
                                                 center_mix_level,
                                                 downmix_info->lfe_mix_level);
            }
            channel_layout = pv->frame->channel_layout;
            if (channel_layout == 0)
            {
                channel_layout = av_get_default_channel_layout(
                                                        pv->frame->channels);
            }
            hb_audio_resample_set_channel_layout(pv->resample, channel_layout);
            hb_audio_resample_set_sample_fmt(pv->resample,
                                             pv->frame->format);
            hb_audio_resample_set_sample_rate(pv->resample,
                                             pv->frame->sample_rate);
            if (hb_audio_resample_update(pv->resample))
            {
                hb_log("decavcodec: hb_audio_resample_update() failed");
                av_frame_unref(pv->frame);
                av_packet_unref(&avp);
                return;
            }
            out = hb_audio_resample(pv->resample,
                                    (const uint8_t **)pv->frame->extended_data,
                                    pv->frame->nb_samples);
            if (out != ((void*)0) && pv->drop_samples > 0)
            {

                int channels = hb_mixdown_get_discrete_channel_count(
                                                pv->audio->config.out.mixdown);
                int sample_size = channels * sizeof(float);
                int samples = out->size / sample_size;
                if (samples <= pv->drop_samples)
                {
                    hb_buffer_close(&out);
                    pv->drop_samples -= samples;
                }
                else
                {
                    int size = pv->drop_samples * sample_size;
                    double drop_duration = pv->drop_samples * 90000L /
                                           pv->audio->config.out.samplerate;
                    memmove(out->data, out->data + size, out->size - size);
                    out->size -= size;
                    pts += drop_duration;
                    duration -= drop_duration;
                    pv->drop_samples = 0;
                }
            }
        }

        if (out != ((void*)0))
        {
            out->s.scr_sequence = packet_info->scr_sequence;
            out->s.start = pts;
            out->s.duration = duration;
            if (out->s.start == AV_NOPTS_VALUE)
            {
                out->s.start = pv->next_pts;
            }
            else
            {
                pv->next_pts = out->s.start;
            }
            if (pv->next_pts != (int64_t)AV_NOPTS_VALUE)
            {
                pv->next_pts += pv->duration;
                out->s.stop = pv->next_pts;
            }
            hb_buffer_list_append(&pv->list, out);
        }
        av_frame_unref(pv->frame);
        ++pv->nframes;
    } while (ret >= 0);
    av_packet_unref(&avp);
}
