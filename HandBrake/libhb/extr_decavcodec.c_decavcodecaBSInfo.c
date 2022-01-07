
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_68__ TYPE_9__ ;
typedef struct TYPE_67__ TYPE_8__ ;
typedef struct TYPE_66__ TYPE_7__ ;
typedef struct TYPE_65__ TYPE_6__ ;
typedef struct TYPE_64__ TYPE_5__ ;
typedef struct TYPE_63__ TYPE_4__ ;
typedef struct TYPE_62__ TYPE_3__ ;
typedef struct TYPE_61__ TYPE_2__ ;
typedef struct TYPE_60__ TYPE_1__ ;
typedef struct TYPE_59__ TYPE_19__ ;
typedef struct TYPE_58__ TYPE_18__ ;
typedef struct TYPE_57__ TYPE_17__ ;
typedef struct TYPE_56__ TYPE_16__ ;
typedef struct TYPE_55__ TYPE_15__ ;
typedef struct TYPE_54__ TYPE_14__ ;
typedef struct TYPE_53__ TYPE_13__ ;
typedef struct TYPE_52__ TYPE_12__ ;
typedef struct TYPE_51__ TYPE_11__ ;
typedef struct TYPE_50__ TYPE_10__ ;


struct TYPE_68__ {scalar_t__ context; } ;
typedef TYPE_9__ hb_work_private_t ;
struct TYPE_50__ {scalar_t__ codec_param; TYPE_2__* title; TYPE_13__* audio; TYPE_9__* private_data; } ;
typedef TYPE_10__ hb_work_object_t ;
struct TYPE_60__ {scalar_t__ num; int den; } ;
struct TYPE_51__ {int bitrate; scalar_t__ channel_layout; int mode; int * channel_map; int level; int profile; void* matrix_encoding; TYPE_1__ rate; int sample_bit_depth; int samples_per_frame; int name; } ;
typedef TYPE_11__ hb_work_info_t ;
struct TYPE_67__ {int start; } ;
struct TYPE_52__ {int size; unsigned char* data; struct TYPE_52__* next; TYPE_8__ s; } ;
typedef TYPE_12__ hb_buffer_t ;
struct TYPE_64__ {int den; int num; } ;
struct TYPE_65__ {TYPE_5__ timebase; } ;
struct TYPE_66__ {TYPE_6__ in; } ;
struct TYPE_53__ {size_t id; TYPE_7__ config; } ;
typedef TYPE_13__ hb_audio_t ;
typedef int codec_name ;
struct TYPE_63__ {int den; int num; } ;
struct TYPE_62__ {int codecpar; } ;
struct TYPE_61__ {int * opaque_priv; } ;
struct TYPE_59__ {int id; int name; } ;
struct TYPE_58__ {scalar_t__ codec_id; scalar_t__ channel_layout; scalar_t__ sample_rate; scalar_t__ bit_rate; scalar_t__ audio_service_type; scalar_t__ extradata_size; int level; int profile; int bits_per_raw_sample; scalar_t__ request_channel_layout; TYPE_4__ pkt_timebase; } ;
struct TYPE_57__ {TYPE_3__** streams; } ;
struct TYPE_56__ {scalar_t__ sample_rate; scalar_t__ channel_layout; int channels; int nb_samples; } ;
struct TYPE_55__ {void** data; } ;
struct TYPE_54__ {unsigned char* data; int size; } ;
typedef TYPE_14__ AVPacket ;
typedef TYPE_15__ AVFrameSideData ;
typedef TYPE_16__ AVFrame ;
typedef TYPE_17__ AVFormatContext ;
typedef int AVDictionary ;
typedef int AVCodecParserContext ;
typedef TYPE_18__ AVCodecContext ;
typedef TYPE_19__ AVCodec ;


 int AVERROR_EOF ;
 scalar_t__ AV_AUDIO_SERVICE_TYPE_KARAOKE ;
 scalar_t__ AV_CH_LAYOUT_MONO ;
 scalar_t__ AV_CH_LAYOUT_STEREO ;
 scalar_t__ AV_CH_LAYOUT_STEREO_DOWNMIX ;
 scalar_t__ AV_CODEC_ID_AAC ;
 scalar_t__ AV_CODEC_ID_AC3 ;
 scalar_t__ AV_CODEC_ID_EAC3 ;
 scalar_t__ AV_CODEC_ID_TRUEHD ;
 int AV_FRAME_DATA_MATRIXENCODING ;
 void* AV_MATRIX_ENCODING_DOLBY ;
 void* AV_MATRIX_ENCODING_DPLII ;
 void* AV_MATRIX_ENCODING_NONE ;
 int AV_SAMPLE_FMT_FLT ;
 int av_dict_free (int **) ;
 int av_dict_set (int **,char*,char*,int ) ;
 TYPE_16__* av_frame_alloc () ;
 int av_frame_free (TYPE_16__**) ;
 TYPE_15__* av_frame_get_side_data (TYPE_16__*,int ) ;
 int av_frame_unref (TYPE_16__*) ;
 int av_get_bits_per_sample (scalar_t__) ;
 int av_get_channel_layout_nb_channels (scalar_t__) ;
 scalar_t__ av_get_default_channel_layout (int) ;
 int av_init_packet (TYPE_14__*) ;
 int av_packet_unref (TYPE_14__*) ;
 int av_parser_close (int *) ;
 int * av_parser_init (int ) ;
 int av_parser_parse2 (int *,TYPE_18__*,unsigned char**,int*,unsigned char*,int,int ,int ,int ) ;
 TYPE_18__* avcodec_alloc_context3 (TYPE_19__*) ;
 TYPE_19__* avcodec_find_decoder (scalar_t__) ;
 int avcodec_parameters_to_context (TYPE_18__*,int ) ;
 int avcodec_receive_frame (TYPE_18__*,TYPE_16__*) ;
 int avcodec_send_packet (TYPE_18__*,TYPE_14__*) ;
 int decavcodecaInfo (TYPE_10__*,TYPE_11__*) ;
 int hb_avcodec_free_context (TYPE_18__**) ;
 scalar_t__ hb_avcodec_open (TYPE_18__*,TYPE_19__*,int **,int ) ;
 int hb_ff_set_sample_fmt (TYPE_18__*,TYPE_19__*,int ) ;
 int hb_libav_chan_map ;
 int hb_log (char*) ;
 int memset (TYPE_11__*,int ,int) ;
 int parse_adts_extradata (TYPE_13__*,TYPE_18__*,TYPE_14__*) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static int decavcodecaBSInfo( hb_work_object_t *w, const hb_buffer_t *buf,
                             hb_work_info_t *info )
{
    hb_work_private_t *pv = w->private_data;
    int result = 0, done = 0;
    hb_audio_t *audio = w->audio;

    memset( info, 0, sizeof(*info) );

    if ( pv && pv->context )
    {
        return decavcodecaInfo( w, info );
    }

    AVCodec *codec = avcodec_find_decoder( w->codec_param );
    if ( ! codec )
    {

        return -1;
    }

    static char codec_name[64];
    info->name = strncpy( codec_name, codec->name, sizeof(codec_name)-1 );

    AVCodecContext *context = avcodec_alloc_context3(codec);
    AVCodecParserContext *parser = ((void*)0);

    if (w->title && w->title->opaque_priv != ((void*)0))
    {
        AVFormatContext *ic = (AVFormatContext*)w->title->opaque_priv;
        avcodec_parameters_to_context(context,
                                      ic->streams[audio->id]->codecpar);







        context->codec_id = w->codec_param;
    }
    else
    {
        parser = av_parser_init(codec->id);
    }

    hb_ff_set_sample_fmt( context, codec, AV_SAMPLE_FMT_FLT );

    AVDictionary * av_opts = ((void*)0);
    av_dict_set( &av_opts, "err_detect", "crccheck+explode", 0 );
    if ( hb_avcodec_open( context, codec, &av_opts, 0 ) )
    {
        av_dict_free( &av_opts );
        return -1;
    }
    if (audio != ((void*)0))
    {
        context->pkt_timebase.num = audio->config.in.timebase.num;
        context->pkt_timebase.den = audio->config.in.timebase.den;
    }

    av_dict_free( &av_opts );
    unsigned char *parse_buffer;
    int parse_pos, parse_buffer_size;

    while (buf != ((void*)0) && !done)
    {
        parse_pos = 0;
        while (parse_pos < buf->size && !done)
        {
            int parse_len, truehd_mono = 0, ret;

            if (parser != ((void*)0))
            {
                parse_len = av_parser_parse2(parser, context,
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



            if (context->codec_id == AV_CODEC_ID_TRUEHD &&
                context->channel_layout == AV_CH_LAYOUT_MONO)
            {
                truehd_mono = 1;
                context->request_channel_layout = AV_CH_LAYOUT_STEREO;
            }
            else
            {
                context->request_channel_layout = 0;
            }

            AVPacket avp;
            av_init_packet(&avp);
            avp.data = parse_buffer;
            avp.size = parse_buffer_size;

            ret = avcodec_send_packet(context, &avp);
            if (ret < 0 && ret != AVERROR_EOF)
            {
                parse_pos += parse_len;
                av_packet_unref(&avp);
                continue;
            }

            AVFrame *frame = ((void*)0);
            do
            {
                if (frame == ((void*)0))
                {
                    frame = av_frame_alloc();
                }
                ret = avcodec_receive_frame(context, frame);
                if (ret >= 0)
                {

                    if (frame->sample_rate != 0)
                    {
                        info->rate.num = frame->sample_rate;
                    }
                    else
                    {
                        info->rate.num = context->sample_rate;
                        hb_log("decavcodecaBSInfo: warning: invalid frame sample_rate! Using context sample_rate.");
                    }
                    info->rate.den = 1;
                    info->samples_per_frame = frame->nb_samples;
                    info->sample_bit_depth = context->bits_per_raw_sample;

                    int bps = av_get_bits_per_sample(context->codec_id);
                    int channels;
                    if (frame->channel_layout != 0)
                    {
                        channels = av_get_channel_layout_nb_channels(
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
                             av_frame_get_side_data(frame,
                                                    AV_FRAME_DATA_MATRIXENCODING)) != ((void*)0))
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


                        info->channel_layout = av_get_default_channel_layout(
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



                        parse_adts_extradata(audio, context, &avp);
                    }

                    result = 1;
                    done = 1;
                    av_frame_unref(frame);
                    break;
                }
            } while (ret >= 0);
            av_packet_unref(&avp);
            av_frame_free(&frame);
            parse_pos += parse_len;
        }
        buf = buf->next;
    }

    info->profile = context->profile;
    info->level = context->level;
    info->channel_map = &hb_libav_chan_map;

    if ( parser != ((void*)0) )
        av_parser_close( parser );
    hb_avcodec_free_context(&context);
    return result;
}
