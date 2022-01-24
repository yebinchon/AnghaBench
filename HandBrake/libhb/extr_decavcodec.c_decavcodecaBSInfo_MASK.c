#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_68__   TYPE_9__ ;
typedef  struct TYPE_67__   TYPE_8__ ;
typedef  struct TYPE_66__   TYPE_7__ ;
typedef  struct TYPE_65__   TYPE_6__ ;
typedef  struct TYPE_64__   TYPE_5__ ;
typedef  struct TYPE_63__   TYPE_4__ ;
typedef  struct TYPE_62__   TYPE_3__ ;
typedef  struct TYPE_61__   TYPE_2__ ;
typedef  struct TYPE_60__   TYPE_1__ ;
typedef  struct TYPE_59__   TYPE_19__ ;
typedef  struct TYPE_58__   TYPE_18__ ;
typedef  struct TYPE_57__   TYPE_17__ ;
typedef  struct TYPE_56__   TYPE_16__ ;
typedef  struct TYPE_55__   TYPE_15__ ;
typedef  struct TYPE_54__   TYPE_14__ ;
typedef  struct TYPE_53__   TYPE_13__ ;
typedef  struct TYPE_52__   TYPE_12__ ;
typedef  struct TYPE_51__   TYPE_11__ ;
typedef  struct TYPE_50__   TYPE_10__ ;

/* Type definitions */
struct TYPE_68__ {scalar_t__ context; } ;
typedef  TYPE_9__ hb_work_private_t ;
struct TYPE_50__ {scalar_t__ codec_param; TYPE_2__* title; TYPE_13__* audio; TYPE_9__* private_data; } ;
typedef  TYPE_10__ hb_work_object_t ;
struct TYPE_60__ {scalar_t__ num; int den; } ;
struct TYPE_51__ {int bitrate; scalar_t__ channel_layout; int mode; int /*<<< orphan*/ * channel_map; int /*<<< orphan*/  level; int /*<<< orphan*/  profile; void* matrix_encoding; TYPE_1__ rate; int /*<<< orphan*/  sample_bit_depth; int /*<<< orphan*/  samples_per_frame; int /*<<< orphan*/  name; } ;
typedef  TYPE_11__ hb_work_info_t ;
struct TYPE_67__ {int /*<<< orphan*/  start; } ;
struct TYPE_52__ {int size; unsigned char* data; struct TYPE_52__* next; TYPE_8__ s; } ;
typedef  TYPE_12__ hb_buffer_t ;
struct TYPE_64__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_65__ {TYPE_5__ timebase; } ;
struct TYPE_66__ {TYPE_6__ in; } ;
struct TYPE_53__ {size_t id; TYPE_7__ config; } ;
typedef  TYPE_13__ hb_audio_t ;
typedef  int /*<<< orphan*/  codec_name ;
struct TYPE_63__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_62__ {int /*<<< orphan*/  codecpar; } ;
struct TYPE_61__ {int /*<<< orphan*/ * opaque_priv; } ;
struct TYPE_59__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_58__ {scalar_t__ codec_id; scalar_t__ channel_layout; scalar_t__ sample_rate; scalar_t__ bit_rate; scalar_t__ audio_service_type; scalar_t__ extradata_size; int /*<<< orphan*/  level; int /*<<< orphan*/  profile; int /*<<< orphan*/  bits_per_raw_sample; scalar_t__ request_channel_layout; TYPE_4__ pkt_timebase; } ;
struct TYPE_57__ {TYPE_3__** streams; } ;
struct TYPE_56__ {scalar_t__ sample_rate; scalar_t__ channel_layout; int channels; int /*<<< orphan*/  nb_samples; } ;
struct TYPE_55__ {void** data; } ;
struct TYPE_54__ {unsigned char* data; int size; } ;
typedef  TYPE_14__ AVPacket ;
typedef  TYPE_15__ AVFrameSideData ;
typedef  TYPE_16__ AVFrame ;
typedef  TYPE_17__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVCodecParserContext ;
typedef  TYPE_18__ AVCodecContext ;
typedef  TYPE_19__ AVCodec ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ AV_AUDIO_SERVICE_TYPE_KARAOKE ; 
 scalar_t__ AV_CH_LAYOUT_MONO ; 
 scalar_t__ AV_CH_LAYOUT_STEREO ; 
 scalar_t__ AV_CH_LAYOUT_STEREO_DOWNMIX ; 
 scalar_t__ AV_CODEC_ID_AAC ; 
 scalar_t__ AV_CODEC_ID_AC3 ; 
 scalar_t__ AV_CODEC_ID_EAC3 ; 
 scalar_t__ AV_CODEC_ID_TRUEHD ; 
 int /*<<< orphan*/  AV_FRAME_DATA_MATRIXENCODING ; 
 void* AV_MATRIX_ENCODING_DOLBY ; 
 void* AV_MATRIX_ENCODING_DPLII ; 
 void* AV_MATRIX_ENCODING_NONE ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_FLT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_16__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_16__**) ; 
 TYPE_15__* FUNC4 (TYPE_16__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_16__*) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_18__*,unsigned char**,int*,unsigned char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_18__* FUNC14 (TYPE_19__*) ; 
 TYPE_19__* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_18__*,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_18__*,TYPE_16__*) ; 
 int FUNC18 (TYPE_18__*,TYPE_14__*) ; 
 int FUNC19 (TYPE_10__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_18__**) ; 
 scalar_t__ FUNC21 (TYPE_18__*,TYPE_19__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_18__*,TYPE_19__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hb_libav_chan_map ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_11__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_13__*,TYPE_18__*,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC27( hb_work_object_t *w, const hb_buffer_t *buf,
                             hb_work_info_t *info )
{
    hb_work_private_t *pv = w->private_data;
    int result = 0, done = 0;
    hb_audio_t *audio = w->audio;

    FUNC24( info, 0, sizeof(*info) );

    if ( pv && pv->context )
    {
        return FUNC19( w, info );
    }

    AVCodec *codec = FUNC15( w->codec_param );
    if ( ! codec )
    {
        // there's no ffmpeg codec for this audio type - give up
        return -1;
    }

    static char codec_name[64];
    info->name =  FUNC26( codec_name, codec->name, sizeof(codec_name)-1 );

    AVCodecContext *context      = FUNC14(codec);
    AVCodecParserContext *parser = NULL;

    if (w->title && w->title->opaque_priv != NULL)
    {
        AVFormatContext *ic = (AVFormatContext*)w->title->opaque_priv;
        FUNC16(context,
                                      ic->streams[audio->id]->codecpar);
        // libav's eac3 parser toggles the codec_id in the context as
        // it reads eac3 data between AV_CODEC_ID_AC3 and AV_CODEC_ID_EAC3.
        // It detects an AC3 sync pattern sometimes in ac3_sync() which
        // causes it to eventually set avctx->codec_id to AV_CODEC_ID_AC3
        // in ff_aac_ac3_parse(). Since we are parsing some data before
        // we get here, the codec_id may have flipped.  This will cause an
        // error in hb_avcodec_open().  So flip it back!
        context->codec_id = w->codec_param;
    }
    else
    {
        parser = FUNC12(codec->id);
    }

    FUNC22( context, codec, AV_SAMPLE_FMT_FLT );

    AVDictionary * av_opts = NULL;
    FUNC1( &av_opts, "err_detect", "crccheck+explode", 0 );
    if ( FUNC21( context, codec, &av_opts, 0 ) )
    {
        FUNC0( &av_opts );
        return -1;
    }
    if (audio != NULL)
    {
        context->pkt_timebase.num = audio->config.in.timebase.num;
        context->pkt_timebase.den = audio->config.in.timebase.den;
    }

    FUNC0( &av_opts );
    unsigned char *parse_buffer;
    int parse_pos, parse_buffer_size;

    while (buf != NULL && !done)
    {
        parse_pos = 0;
        while (parse_pos < buf->size && !done)
        {
            int parse_len, truehd_mono = 0, ret;

            if (parser != NULL)
            {
                parse_len = FUNC13(parser, context,
                                &parse_buffer, &parse_buffer_size,
                                buf->data + parse_pos, buf->size - parse_pos,
                                buf->s.start, buf->s.start, 0);
            }
            else
            {
                parse_buffer = buf->data + parse_pos;
                parse_len = parse_buffer_size = buf->size - parse_pos;
            }

            if (parse_buffer_size == 0)
            {
                parse_pos += parse_len;
                continue;
            }

            // libavcodec can't decode TrueHD Mono (bug #356)
            // work around it by requesting Stereo before decoding
            if (context->codec_id == AV_CODEC_ID_TRUEHD &&
                context->channel_layout == AV_CH_LAYOUT_MONO)
            {
                truehd_mono                     = 1;
                context->request_channel_layout = AV_CH_LAYOUT_STEREO;
            }
            else
            {
                context->request_channel_layout = 0;
            }

            AVPacket avp;
            FUNC9(&avp);
            avp.data = parse_buffer;
            avp.size = parse_buffer_size;

            ret = FUNC18(context, &avp);
            if (ret < 0 && ret != AVERROR_EOF)
            {
                parse_pos += parse_len;
                FUNC10(&avp);
                continue;
            }

            AVFrame *frame = NULL;
            do
            {
                if (frame == NULL)
                {
                    frame = FUNC2();
                }
                ret = FUNC17(context, frame);
                if (ret >= 0)
                {
                    // libavcoded doesn't consistently set frame->sample_rate
                    if (frame->sample_rate != 0)
                    {
                        info->rate.num = frame->sample_rate;
                    }
                    else
                    {
                        info->rate.num = context->sample_rate;
                        FUNC23("decavcodecaBSInfo: warning: invalid frame sample_rate! Using context sample_rate.");
                    }
                    info->rate.den          = 1;
                    info->samples_per_frame = frame->nb_samples;
                    info->sample_bit_depth  = context->bits_per_raw_sample;

                    int bps = FUNC6(context->codec_id);
                    int channels;
                    if (frame->channel_layout != 0)
                    {
                        channels = FUNC7(
                                                        frame->channel_layout);
                    }
                    else
                    {
                        channels = frame->channels;
                    }

                    info->bitrate = bps * channels * info->rate.num;
                    if (info->bitrate <= 0)
                    {
                        if (context->bit_rate > 0)
                        {
                            info->bitrate = context->bit_rate;
                        }
                        else
                        {
                            info->bitrate = 1;
                        }
                    }

                    if (truehd_mono)
                    {
                        info->channel_layout = AV_CH_LAYOUT_MONO;
                        info->matrix_encoding = AV_MATRIX_ENCODING_NONE;
                    }
                    else
                    {
                        AVFrameSideData *side_data;
                        if ((side_data =
                             FUNC4(frame,
                                                    AV_FRAME_DATA_MATRIXENCODING)) != NULL)
                        {
                            info->matrix_encoding = *side_data->data;
                        }
                        else
                        {
                            info->matrix_encoding = AV_MATRIX_ENCODING_NONE;
                        }
                        if (info->matrix_encoding == AV_MATRIX_ENCODING_DOLBY ||
                            info->matrix_encoding == AV_MATRIX_ENCODING_DPLII)
                        {
                            info->channel_layout = AV_CH_LAYOUT_STEREO_DOWNMIX;
                        }
                        else
                        {
                            info->channel_layout = frame->channel_layout;
                        }
                    }
                    if (info->channel_layout == 0)
                    {
                        // Channel layout was not set.  Guess a layout based
                        // on number of channels.
                        info->channel_layout = FUNC8(
                                                            frame->channels);
                    }
                    if (context->codec_id == AV_CODEC_ID_AC3 ||
                        context->codec_id == AV_CODEC_ID_EAC3)
                    {
                        if (context->audio_service_type == AV_AUDIO_SERVICE_TYPE_KARAOKE)
                        {
                            info->mode = 7;
                        }
                        else
                        {
                            info->mode = context->audio_service_type;
                        }
                    }
                    else if (context->codec_id == AV_CODEC_ID_AAC &&
                             context->extradata_size == 0)
                    {
                        // Parse ADTS AAC streams for AudioSpecificConfig.
                        // This data is required in order to write
                        // proper headers in MP4, WebM, and MKV files.
                        FUNC25(audio, context, &avp);
                    }

                    result = 1;
                    done = 1;
                    FUNC5(frame);
                    break;
                }
            } while (ret >= 0);
            FUNC10(&avp);
            FUNC3(&frame);
            parse_pos += parse_len;
        }
        buf = buf->next;
    }

    info->profile = context->profile;
    info->level = context->level;
    info->channel_map = &hb_libav_chan_map;

    if ( parser != NULL )
        FUNC11( parser );
    FUNC20(&context);
    return result;
}