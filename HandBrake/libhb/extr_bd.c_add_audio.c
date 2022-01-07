
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_16__ {char* native_name; char* eng_name; char* iso639_2; } ;
typedef TYPE_5__ iso639_lang_t ;
typedef int hb_list_t ;
struct TYPE_13__ {int num; int den; } ;
struct TYPE_14__ {int substream_type; int codec; int track; TYPE_2__ timebase; void* codec_param; int stream_type; int reg_desc; } ;
struct TYPE_12__ {int iso639_2; int simple; int attributes; } ;
struct TYPE_15__ {TYPE_3__ in; TYPE_1__ lang; } ;
struct TYPE_17__ {int id; TYPE_4__ config; } ;
typedef TYPE_6__ hb_audio_t ;
struct TYPE_18__ {int pid; scalar_t__ lang; int coding_type; } ;
typedef TYPE_7__ BLURAY_STREAM_INFO ;
 int HB_ACODEC_FF_MASK ;
 int HB_AUDIO_ATTR_NONE ;
 int STR4_TO_UINT32 (char*) ;
 TYPE_6__* calloc (int,int) ;
 int hb_list_add (int *,TYPE_6__*) ;
 int hb_log (char*,int,int ,char const*,int ) ;
 TYPE_5__* lang_for_code2 (char*) ;
 int snprintf (int ,int,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void add_audio(int track, hb_list_t *list_audio, BLURAY_STREAM_INFO *bdaudio, int substream_type, uint32_t codec, uint32_t codec_param)
{
    const char * codec_name;
    hb_audio_t * audio;
    iso639_lang_t * lang;

    audio = calloc( sizeof( hb_audio_t ), 1 );

    audio->id = (substream_type << 16) | bdaudio->pid;
    audio->config.in.reg_desc = STR4_TO_UINT32("HDMV");
    audio->config.in.stream_type = bdaudio->coding_type;
    audio->config.in.substream_type = substream_type;
    audio->config.in.codec = codec;
    audio->config.in.codec_param = codec_param;

    switch( audio->config.in.codec )
    {
        case 129:
            codec_name = "AC3";
            break;
        case 128:
            codec_name = "DTS";
            break;
        default:
        {
            if( audio->config.in.codec & HB_ACODEC_FF_MASK )
            {
                switch( bdaudio->coding_type )
                {
                    case 136:
                        codec_name = "E-AC3";
                        break;
                    case 135:
                        codec_name = "DTS-HD HRA";
                        break;
                    case 134:
                        codec_name = "DTS-HD MA";
                        break;
                    case 133:
                        codec_name = "BD LPCM";
                        break;
                    case 132:
                        codec_name = "MPEG1";
                        break;
                    case 131:
                        codec_name = "MPEG2";
                        break;
                    case 130:
                        codec_name = "TrueHD";
                        break;
                    default:
                        codec_name = "Unknown FFmpeg";
                        break;
                }
            }
            else
            {
                codec_name = "Unknown";
            }
        }
        break;
    }

    lang = lang_for_code2( (char*)bdaudio->lang );

    audio->config.lang.attributes = HB_AUDIO_ATTR_NONE;

    snprintf( audio->config.lang.simple,
              sizeof( audio->config.lang.simple ), "%s",
              strlen( lang->native_name ) ? lang->native_name : lang->eng_name );
    snprintf( audio->config.lang.iso639_2,
              sizeof( audio->config.lang.iso639_2 ), "%s", lang->iso639_2 );

    hb_log("bd: audio id=0x%x, lang=%s (%s), 3cc=%s", audio->id,
           audio->config.lang.simple, codec_name, audio->config.lang.iso639_2);

    audio->config.in.track = track;
    audio->config.in.timebase.num = 1;
    audio->config.in.timebase.den = 90000;

    hb_list_add( list_audio, audio );
    return;
}
