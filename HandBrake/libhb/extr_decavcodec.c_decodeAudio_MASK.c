#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_38__   TYPE_9__ ;
typedef  struct TYPE_37__   TYPE_8__ ;
typedef  struct TYPE_36__   TYPE_7__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_21__ ;
typedef  struct TYPE_29__   TYPE_1__ ;
typedef  struct TYPE_28__   TYPE_11__ ;
typedef  struct TYPE_27__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_34__ {scalar_t__ pts; int discard; int /*<<< orphan*/  scr_sequence; scalar_t__ size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_5__ packet_info_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_35__ {scalar_t__ next_pts; int duration; scalar_t__ drop_samples; int /*<<< orphan*/  nframes; TYPE_21__* frame; int /*<<< orphan*/  list; TYPE_4__* audio; int /*<<< orphan*/  resample; int /*<<< orphan*/  decode_errors; TYPE_11__* context; } ;
typedef  TYPE_6__ hb_work_private_t ;
struct TYPE_29__ {scalar_t__ start; double duration; scalar_t__ stop; int /*<<< orphan*/  scr_sequence; } ;
struct TYPE_36__ {int size; TYPE_1__ s; scalar_t__ data; } ;
typedef  TYPE_7__ hb_buffer_t ;
struct TYPE_38__ {scalar_t__ data; } ;
struct TYPE_37__ {scalar_t__ pts; int flags; scalar_t__ size; int /*<<< orphan*/ * data; scalar_t__ dts; } ;
struct TYPE_31__ {int codec; scalar_t__ mixdown; long samplerate; } ;
struct TYPE_32__ {TYPE_2__ out; } ;
struct TYPE_33__ {TYPE_3__ config; } ;
struct TYPE_30__ {int sample_rate; int nb_samples; scalar_t__ pts; scalar_t__ channel_layout; scalar_t__ extended_data; int /*<<< orphan*/  format; int /*<<< orphan*/  channels; } ;
struct TYPE_28__ {int sample_rate; } ;
struct TYPE_27__ {double surround_mix_level_ltrt; double center_mix_level_ltrt; double surround_mix_level; double center_mix_level; int /*<<< orphan*/  lfe_mix_level; } ;
typedef  TYPE_8__ AVPacket ;
typedef  TYPE_9__ AVFrameSideData ;
typedef  TYPE_10__ AVDownmixInfo ;
typedef  TYPE_11__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_FRAME_DATA_DOWNMIX_INFO ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int AV_PKT_FLAG_DISCARD ; 
 int /*<<< orphan*/  EAGAIN ; 
 int HB_ACODEC_PASS_FLAG ; 
 scalar_t__ HB_AMIXDOWN_DOLBY ; 
 scalar_t__ HB_AMIXDOWN_DOLBYPLII ; 
 TYPE_9__* FUNC1 (TYPE_21__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_21__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int FUNC6 (TYPE_11__*,TYPE_21__*) ; 
 int FUNC7 (TYPE_11__*,TYPE_8__*) ; 
 TYPE_7__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,double,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_7__**) ; 
 TYPE_7__* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static void FUNC21(hb_work_private_t *pv, packet_info_t * packet_info)
{
    AVCodecContext * context = pv->context;
    AVPacket         avp;
    int              ret;

    // libav does not supply timestamps for wmapro audio (possibly others)
    // if there is an input timestamp, initialize next_pts
    if (pv->next_pts     == (int64_t)AV_NOPTS_VALUE &&
        packet_info      != NULL &&
        packet_info->pts != AV_NOPTS_VALUE)
    {
        pv->next_pts = packet_info->pts;
    }
    FUNC4(&avp);
    if (packet_info != NULL)
    {
        avp.data = packet_info->data;
        avp.size = packet_info->size;
        avp.pts  = packet_info->pts;
        avp.dts  = AV_NOPTS_VALUE;
        avp.flags |= packet_info->discard * AV_PKT_FLAG_DISCARD;
    }
    else
    {
        avp.data = NULL;
        avp.size = 0;
    }

    ret = FUNC7(context, &avp);
    if (ret < 0 && ret != AVERROR_EOF)
    {
        FUNC5(&avp);
        return;
    }

    do
    {
        ret = FUNC6(context, pv->frame);
        if (ret < 0 && ret != FUNC0(EAGAIN) && ret != AVERROR_EOF)
        {
            ++pv->decode_errors;
        }
        if (ret < 0)
        {
            break;
        }

        hb_buffer_t * out;
        int           samplerate;

        // libavcoded doesn't yet consistently set frame->sample_rate
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
        double  duration = pv->duration;

        if (pv->audio->config.out.codec & HB_ACODEC_PASS_FLAG)
        {
            // Note that even though we are doing passthru, we had to decode
            // so that we know the stop time and the pts of the next audio
            // packet.
            out = FUNC15(avp.size);
            FUNC19(out->data, avp.data, avp.size);
        }
        else
        {
            AVFrameSideData *side_data;
            uint64_t         channel_layout;
            if ((side_data =
                 FUNC1(pv->frame,
                                AV_FRAME_DATA_DOWNMIX_INFO)) != NULL)
            {
                double          surround_mix_level, center_mix_level;
                AVDownmixInfo * downmix_info;

                downmix_info = (AVDownmixInfo*)side_data->data;
                if (pv->audio->config.out.mixdown == HB_AMIXDOWN_DOLBY ||
                    pv->audio->config.out.mixdown == HB_AMIXDOWN_DOLBYPLII)
                {
                    surround_mix_level = downmix_info->surround_mix_level_ltrt;
                    center_mix_level   = downmix_info->center_mix_level_ltrt;
                }
                else
                {
                    surround_mix_level = downmix_info->surround_mix_level;
                    center_mix_level   = downmix_info->center_mix_level;
                }
                FUNC10(pv->resample,
                                                 surround_mix_level,
                                                 center_mix_level,
                                                 downmix_info->lfe_mix_level);
            }
            channel_layout = pv->frame->channel_layout;
            if (channel_layout == 0)
            {
                channel_layout = FUNC3(
                                                        pv->frame->channels);
            }
            FUNC9(pv->resample, channel_layout);
            FUNC11(pv->resample,
                                             pv->frame->format);
            FUNC12(pv->resample,
                                             pv->frame->sample_rate);
            if (FUNC13(pv->resample))
            {
                FUNC17("decavcodec: hb_audio_resample_update() failed");
                FUNC2(pv->frame);
                FUNC5(&avp);
                return;
            }
            out = FUNC8(pv->resample,
                                    (const uint8_t **)pv->frame->extended_data,
                                    pv->frame->nb_samples);
            if (out != NULL && pv->drop_samples > 0)
            {
                /* drop audio samples that are part of the encoder delay */
                int channels = FUNC18(
                                                pv->audio->config.out.mixdown);
                int sample_size = channels * sizeof(float);
                int samples = out->size / sample_size;
                if (samples <= pv->drop_samples)
                {
                    FUNC14(&out);
                    pv->drop_samples -= samples;
                }
                else
                {
                    int size = pv->drop_samples * sample_size;
                    double drop_duration = pv->drop_samples * 90000L /
                                           pv->audio->config.out.samplerate;
                    FUNC20(out->data, out->data + size, out->size - size);
                    out->size -= size;
                    pts += drop_duration;
                    duration -= drop_duration;
                    pv->drop_samples = 0;
                }
            }
        }

        if (out != NULL)
        {
            out->s.scr_sequence = packet_info->scr_sequence;
            out->s.start        = pts;
            out->s.duration     = duration;
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
                out->s.stop  = pv->next_pts;
            }
            FUNC16(&pv->list, out);
        }
        FUNC2(pv->frame);
        ++pv->nframes;
    } while (ret >= 0);
    FUNC5(&avp);
}