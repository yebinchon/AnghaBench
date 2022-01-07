
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_15__ ;
typedef struct TYPE_29__ TYPE_14__ ;
typedef struct TYPE_28__ TYPE_13__ ;
typedef struct TYPE_27__ TYPE_12__ ;
typedef struct TYPE_26__ TYPE_11__ ;
typedef struct TYPE_25__ TYPE_10__ ;


struct TYPE_39__ {int iso639_2; } ;
typedef TYPE_9__ iso639_lang_t ;
struct TYPE_25__ {int list_audio; } ;
typedef TYPE_10__ hb_title_t ;
struct TYPE_26__ {TYPE_1__* ffmpeg_ic; } ;
typedef TYPE_11__ hb_stream_t ;
struct TYPE_32__ {int num; int den; } ;
struct TYPE_37__ {int track; int codec_param; int name; int codec; TYPE_2__ timebase; int encoder_delay; scalar_t__ bitrate; } ;
struct TYPE_36__ {int attributes; } ;
struct TYPE_38__ {TYPE_7__ in; TYPE_6__ lang; } ;
struct TYPE_33__ {int length; int bytes; } ;
struct TYPE_34__ {TYPE_3__ extradata; } ;
struct TYPE_35__ {TYPE_4__ config; } ;
struct TYPE_27__ {int id; TYPE_8__ config; TYPE_5__ priv; } ;
typedef TYPE_12__ hb_audio_t ;
struct TYPE_31__ {TYPE_13__** streams; } ;
struct TYPE_30__ {int codec_id; int extradata; int extradata_size; int profile; int initial_padding; } ;
struct TYPE_29__ {char* value; } ;
struct TYPE_28__ {int disposition; int metadata; TYPE_15__* codecpar; } ;
typedef TYPE_13__ AVStream ;
typedef TYPE_14__ AVDictionaryEntry ;
typedef TYPE_15__ AVCodecParameters ;
 int AV_DISPOSITION_DEFAULT ;





 int HB_ACODEC_AC3 ;
 int HB_ACODEC_DCA ;
 int HB_ACODEC_DCA_HD ;
 int HB_ACODEC_FFAAC ;
 int HB_ACODEC_FFEAC3 ;
 int HB_ACODEC_FFFLAC ;
 int HB_ACODEC_FFMPEG ;
 int HB_ACODEC_FFTRUEHD ;
 int HB_ACODEC_MP3 ;
 int HB_AUDIO_ATTR_DEFAULT ;
 int HB_CONFIG_MAX_SIZE ;
 int MIN (int ,int ) ;
 TYPE_14__* av_dict_get (int ,char*,int *,int ) ;
 TYPE_12__* calloc (int,int) ;
 char* ffmpeg_track_name (TYPE_13__*,int ) ;
 int hb_list_add (int ,TYPE_12__*) ;
 TYPE_9__* lang_for_code2 (char*) ;
 int memcpy (int ,int ,int) ;
 int set_audio_description (TYPE_12__*,TYPE_9__*) ;
 int strdup (char const*) ;

__attribute__((used)) static void add_ffmpeg_audio(hb_title_t *title, hb_stream_t *stream, int id)
{
    AVStream *st = stream->ffmpeg_ic->streams[id];
    AVCodecParameters * codecpar = st->codecpar;
    AVDictionaryEntry * tag_lang = av_dict_get(st->metadata, "language", ((void*)0), 0);
    iso639_lang_t * lang = lang_for_code2(tag_lang != ((void*)0) ?
                                              tag_lang->value : "und");
    const char * name = ffmpeg_track_name(st, lang->iso639_2);

    hb_audio_t *audio = calloc(1, sizeof(*audio));
    audio->id = id;
    audio->config.in.track = id;
    audio->config.in.codec = HB_ACODEC_FFMPEG;
    audio->config.in.codec_param = codecpar->codec_id;

    audio->config.in.bitrate = 0;
    audio->config.in.encoder_delay = codecpar->initial_padding;




    audio->config.in.timebase.num = 1;
    audio->config.in.timebase.den = 90000;


    switch (codecpar->codec_id)
    {
        case 139:
        {
            int len = MIN(codecpar->extradata_size, HB_CONFIG_MAX_SIZE);
            memcpy(audio->priv.config.extradata.bytes, codecpar->extradata, len);
            audio->priv.config.extradata.length = len;
            audio->config.in.codec = HB_ACODEC_FFAAC;
        } break;

        case 138:
            audio->config.in.codec = HB_ACODEC_AC3;
            break;

        case 136:
            audio->config.in.codec = HB_ACODEC_FFEAC3;
            break;

        case 133:
            audio->config.in.codec = HB_ACODEC_FFTRUEHD;
            break;

        case 137:
        {
            switch (codecpar->profile)
            {
                case 132:
                case 130:
                case 131:
                    audio->config.in.codec = HB_ACODEC_DCA;
                    break;

                case 128:
                case 129:
                    audio->config.in.codec = HB_ACODEC_DCA_HD;
                    break;

                default:
                    break;
            }
        } break;

        case 135:
        {
            int len = MIN(codecpar->extradata_size, HB_CONFIG_MAX_SIZE);
            memcpy(audio->priv.config.extradata.bytes, codecpar->extradata, len);
            audio->priv.config.extradata.length = len;
            audio->config.in.codec = HB_ACODEC_FFFLAC;
        } break;

        case 134:
            audio->config.in.codec = HB_ACODEC_MP3;
            break;

        default:
            break;
    }

    if (st->disposition & AV_DISPOSITION_DEFAULT)
    {
        audio->config.lang.attributes |= HB_AUDIO_ATTR_DEFAULT;
    }

    set_audio_description(audio, lang);
    if (name != ((void*)0))
    {
        audio->config.in.name = strdup(name);
    }
    hb_list_add(title->list_audio, audio);
}
