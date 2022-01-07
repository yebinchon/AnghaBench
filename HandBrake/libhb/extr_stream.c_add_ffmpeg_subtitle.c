
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_25__ {char* native_name; char* eng_name; int iso639_2; } ;
typedef TYPE_4__ iso639_lang_t ;
struct TYPE_26__ {int list_subtitle; } ;
typedef TYPE_5__ hb_title_t ;
struct TYPE_24__ {int default_track; void* dest; } ;
struct TYPE_23__ {int num; int den; } ;
struct TYPE_27__ {int id; int extradata_size; int track; int attributes; TYPE_3__ config; scalar_t__* extradata; int name; scalar_t__* iso639_2; int source; int lang; int codec; void* format; TYPE_2__ timebase; } ;
typedef TYPE_6__ hb_subtitle_t ;
struct TYPE_28__ {TYPE_1__* ffmpeg_ic; } ;
typedef TYPE_7__ hb_stream_t ;
struct TYPE_30__ {char* value; } ;
struct TYPE_29__ {int disposition; int metadata; TYPE_10__* codecpar; } ;
struct TYPE_22__ {TYPE_8__** streams; } ;
struct TYPE_21__ {int codec_id; int extradata_size; int * extradata; } ;
typedef TYPE_8__ AVStream ;
typedef TYPE_9__ AVDictionaryEntry ;
typedef TYPE_10__ AVCodecParameters ;
 int AV_DISPOSITION_DEFAULT ;
 int AV_DISPOSITION_FORCED ;
 int CC608SUB ;
 int HB_SUBTITLE_ATTR_CC ;
 int HB_SUBTITLE_ATTR_DEFAULT ;
 int HB_SUBTITLE_ATTR_FORCED ;
 void* PASSTHRUSUB ;
 int PGSSUB ;
 void* PICTURESUB ;
 void* RENDERSUB ;
 int SSASUB ;
 void* TEXTSUB ;
 int TX3GSUB ;
 int UTF8SUB ;
 int VOBSUB ;
 int WORK_DECCC608 ;
 int WORK_DECPGSSUB ;
 int WORK_DECSSASUB ;
 int WORK_DECTX3GSUB ;
 int WORK_DECUTF8SUB ;
 int WORK_DECVOBSUB ;
 TYPE_9__* av_dict_get (int ,char*,int *,int ) ;
 TYPE_6__* calloc (int,int) ;
 int ffmpeg_parse_vobsub_extradata (TYPE_10__*,TYPE_6__*) ;
 char* ffmpeg_track_name (TYPE_8__*,int ) ;
 int free (TYPE_6__*) ;
 int hb_list_add (int ,TYPE_6__*) ;
 int hb_list_count (int ) ;
 int hb_log (char*,...) ;
 char* hb_subsource_name (int ) ;
 TYPE_4__* lang_for_code2 (char*) ;
 scalar_t__* malloc (int) ;
 int memcpy (scalar_t__*,int *,int) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int strdup (char const*) ;
 scalar_t__ strlen (char*) ;
 int strncpy (scalar_t__*,int ,int) ;

__attribute__((used)) static void add_ffmpeg_subtitle( hb_title_t *title, hb_stream_t *stream, int id )
{
    AVStream * st = stream->ffmpeg_ic->streams[id];
    AVCodecParameters * codecpar = st->codecpar;
    AVDictionaryEntry * tag_lang = av_dict_get(st->metadata, "language", ((void*)0), 0 );
    iso639_lang_t * lang = lang_for_code2(tag_lang != ((void*)0) ?
                                              tag_lang->value : "und");
    const char * name = ffmpeg_track_name(st, lang->iso639_2);

    hb_subtitle_t *subtitle = calloc( 1, sizeof(*subtitle) );

    subtitle->id = id;



    subtitle->timebase.num = 1;
    subtitle->timebase.den = 90000;

    switch ( codecpar->codec_id )
    {
        case 133:
            subtitle->format = PICTURESUB;
            subtitle->source = VOBSUB;
            subtitle->config.dest = RENDERSUB;
            subtitle->codec = WORK_DECVOBSUB;
            if (ffmpeg_parse_vobsub_extradata(codecpar, subtitle))
                hb_log( "add_ffmpeg_subtitle: malformed extradata for VOB subtitle track; "
                        "subtitle colors likely to be wrong" );
            break;
        case 128:
        case 129:
            subtitle->format = TEXTSUB;
            subtitle->source = UTF8SUB;
            subtitle->config.dest = PASSTHRUSUB;
            subtitle->codec = WORK_DECUTF8SUB;
            break;
        case 130:
            subtitle->format = TEXTSUB;
            subtitle->source = TX3GSUB;
            subtitle->config.dest = PASSTHRUSUB;
            subtitle->codec = WORK_DECTX3GSUB;
            break;
        case 134:
            subtitle->format = TEXTSUB;
            subtitle->source = SSASUB;
            subtitle->config.dest = PASSTHRUSUB;
            subtitle->codec = WORK_DECSSASUB;
            break;
        case 131:
            subtitle->format = PICTURESUB;
            subtitle->source = PGSSUB;
            subtitle->config.dest = RENDERSUB;
            subtitle->codec = WORK_DECPGSSUB;
            break;
        case 132:
            subtitle->format = TEXTSUB;
            subtitle->source = CC608SUB;
            subtitle->config.dest = PASSTHRUSUB;
            subtitle->codec = WORK_DECCC608;
            subtitle->attributes = HB_SUBTITLE_ATTR_CC;
            break;
        default:
            hb_log( "add_ffmpeg_subtitle: unknown subtitle stream type: 0x%x",
                    (int) codecpar->codec_id );
            free(subtitle);
            return;
    }

    snprintf(subtitle->lang, sizeof( subtitle->lang ), "%s [%s]",
             strlen(lang->native_name) ? lang->native_name : lang->eng_name,
             hb_subsource_name(subtitle->source));
    strncpy(subtitle->iso639_2, lang->iso639_2, 3);
    subtitle->iso639_2[3] = 0;
    if (name != ((void*)0))
    {
        subtitle->name = strdup(name);
    }


    if (codecpar->extradata != ((void*)0))
    {
        subtitle->extradata = malloc(codecpar->extradata_size + 1);
        memcpy(subtitle->extradata,
               codecpar->extradata, codecpar->extradata_size);
        subtitle->extradata[codecpar->extradata_size] = 0;
        subtitle->extradata_size = codecpar->extradata_size + 1;
    }

    if (st->disposition & AV_DISPOSITION_DEFAULT)
    {
        subtitle->config.default_track = 1;
        subtitle->attributes |= HB_SUBTITLE_ATTR_DEFAULT;
    }
    if (st->disposition & AV_DISPOSITION_FORCED)
    {
        subtitle->attributes |= HB_SUBTITLE_ATTR_FORCED;
    }

    subtitle->track = hb_list_count(title->list_subtitle);
    hb_list_add(title->list_subtitle, subtitle);
}
