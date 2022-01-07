
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int hb_stream_t ;
struct TYPE_16__ {int probe_next_size; scalar_t__ probe_count; scalar_t__ codec; scalar_t__ codec_param; int stream_type; TYPE_7__* probe_buf; scalar_t__* codec_name; void* stream_kind; } ;
typedef TYPE_1__ hb_pes_stream_t ;
struct TYPE_17__ {int size; int data; } ;
typedef TYPE_2__ hb_buffer_t ;
typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_21__ {int size; scalar_t__ data; } ;
struct TYPE_20__ {int id; scalar_t__ type; int name; } ;
struct TYPE_19__ {int name; } ;
struct TYPE_18__ {int buf_size; scalar_t__ buf; int member_0; } ;
typedef TYPE_3__ AVProbeData ;
typedef TYPE_4__ AVInputFormat ;
typedef TYPE_5__ AVCodec ;


 void* A ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 scalar_t__ AVPROBE_PADDING_SIZE ;
 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_CODEC_ID_NONE ;



 scalar_t__ HB_ACODEC_AC3 ;
 scalar_t__ HB_ACODEC_DCA_HD ;
 scalar_t__ HB_ACODEC_FFMPEG ;
 scalar_t__ HB_MAX_PROBES ;
 int HB_MAX_PROBE_SIZE ;
 void* V ;
 void* WORK_DECAVCODECV ;
 TYPE_4__* av_probe_input_format2 (TYPE_3__*,int,int*) ;
 TYPE_5__* avcodec_find_decoder (int) ;
 TYPE_5__* avcodec_find_decoder_by_name (int ) ;
 int do_deep_probe (int *,TYPE_1__*) ;
 int hb_buffer_close (TYPE_7__**) ;
 void* hb_buffer_init (int ) ;
 int hb_buffer_realloc (TYPE_7__*,scalar_t__) ;
 int memcpy (scalar_t__,int ,int) ;
 int probe_dts_profile (int *,TYPE_1__*) ;
 int strcmp (int ,char const*) ;
 int strncpy (scalar_t__*,int ,int) ;

__attribute__((used)) static int do_probe(hb_stream_t *stream, hb_pes_stream_t *pes, hb_buffer_t *buf)
{
    int result = 0;


    if ( pes->probe_buf == ((void*)0) )
    {
        pes->probe_buf = hb_buffer_init( 0 );
        pes->probe_next_size = 0;
        pes->probe_count = 0;
    }

    if ( pes->probe_buf->size > HB_MAX_PROBE_SIZE )
    {


        pes->probe_count++;
        hb_buffer_close( &pes->probe_buf );
        if (pes->probe_count >= HB_MAX_PROBES)
        {
            return -1;
        }
        pes->probe_buf = hb_buffer_init( 0 );
        pes->probe_next_size = 0;
    }


    int size = pes->probe_buf->size + buf->size;

    hb_buffer_realloc(pes->probe_buf, size + AVPROBE_PADDING_SIZE );
    memcpy( pes->probe_buf->data + pes->probe_buf->size, buf->data, buf->size );
    pes->probe_buf->size = size;

    if ( pes->codec == HB_ACODEC_DCA_HD )
    {

        return probe_dts_profile( stream, pes );
    }




    if ( pes->probe_buf->size < pes->probe_next_size )
        return 0;
    pes->probe_next_size = pes->probe_buf->size * 2;

    if (pes->codec_param != AV_CODEC_ID_NONE)
    {



        result = do_deep_probe(stream, pes);
        if (result)
        {
            hb_buffer_close(&pes->probe_buf);
        }
        return result;
    }

    AVInputFormat *fmt = ((void*)0);
    int score = 0;
    AVProbeData pd = {0,};

    pd.buf = pes->probe_buf->data;
    pd.buf_size = pes->probe_buf->size;
    fmt = av_probe_input_format2( &pd, 1, &score );
    if ( fmt && score > AVPROBE_SCORE_MAX / 2 )
    {
        AVCodec *codec = avcodec_find_decoder_by_name( fmt->name );
        if( !codec )
        {
            int i;
            static const struct
            {
                const char *name;
                enum AVCodecID id;
            }
            fmt_id_type[] =
            {
                { "g722" , 144 },
                { "mlp" , 135 },
                { "truehd" , 129 },
                { "shn" , 130 },
                { "aac" , 146 },
                { "ac3" , 145 },
                { "dts" , 141 },
                { "eac3" , 140 },
                { "h264" , 137 },
                { "m4v" , 131 },
                { "mp3" , 134 },
                { "mpegvideo", 132 },
                { "cavsvideo", 143 },
                { "dnxhd" , 142 },
                { "h261" , 139 },
                { "h263" , 138 },
                { "mjpeg" , 136 },
                { "vc1" , 128 },
                { 0 },
            };
            for( i = 0; fmt_id_type[i].name; i++ )
            {
                if( !strcmp(fmt->name, fmt_id_type[i].name ) )
                {
                    codec = avcodec_find_decoder( fmt_id_type[i].id );
                    break;
                }
            }
        }
        if( codec )
        {
            pes->codec_param = codec->id;
            if ( codec->type == AVMEDIA_TYPE_VIDEO )
            {
                switch ( codec->id )
                {
                    case 133:
                        pes->codec = WORK_DECAVCODECV;
                        pes->stream_type = 0x01;
                        pes->stream_kind = V;
                        break;

                    case 132:
                        pes->codec = WORK_DECAVCODECV;
                        pes->stream_type = 0x02;
                        break;

                    case 137:
                        pes->codec = WORK_DECAVCODECV;
                        pes->stream_type = 0x1b;
                        pes->stream_kind = V;
                        break;

                    case 128:
                        pes->codec = WORK_DECAVCODECV;
                        pes->stream_type = 0xea;
                        pes->stream_kind = V;
                        break;

                    default:
                        pes->codec = WORK_DECAVCODECV;
                        pes->stream_kind = V;
                        break;
                }
            }
            else if ( codec->type == AVMEDIA_TYPE_AUDIO )
            {
                pes->stream_kind = A;
                switch ( codec->id )
                {
                    case 145:
                        pes->codec = HB_ACODEC_AC3;
                        break;
                    default:
                        pes->codec = HB_ACODEC_FFMPEG;
                }
            }
            strncpy(pes->codec_name, codec->name, 79);
            pes->codec_name[79] = 0;
        }
        if (pes->codec_param != 132)
        {
            hb_buffer_close( &pes->probe_buf );
            result = 1;
        }
    }
    return result;
}
