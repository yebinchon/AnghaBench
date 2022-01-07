
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {char* native_name; char* eng_name; char* iso639_2; } ;
typedef TYPE_4__ iso639_lang_t ;
struct TYPE_22__ {int list_subtitle; } ;
typedef TYPE_5__ hb_title_t ;
struct TYPE_20__ {void* dest; } ;
struct TYPE_19__ {int num; int den; } ;
struct TYPE_23__ {int id; int track; scalar_t__ source; int substream_type; int codec; int* palette; int stream_type; int reg_desc; int iso639_2; int lang; TYPE_3__ config; void* format; TYPE_2__ timebase; } ;
typedef TYPE_6__ hb_subtitle_t ;
struct TYPE_18__ {TYPE_8__* list; } ;
struct TYPE_24__ {int reg_desc; TYPE_1__ pes; } ;
typedef TYPE_7__ hb_stream_t ;
struct TYPE_25__ {int codec; int stream_id_ext; int stream_id; int stream_type; int lang_code; } ;
typedef TYPE_8__ hb_pes_stream_t ;


 scalar_t__ PGSSUB ;
 void* PICTURESUB ;
 void* RENDERSUB ;
 scalar_t__ VOBSUB ;


 TYPE_6__* calloc (int,int) ;
 int free (TYPE_6__*) ;
 int get_id (TYPE_8__*) ;
 int hb_list_add (int ,TYPE_6__*) ;
 int hb_list_count (int ) ;
 int hb_list_insert (int ,int,TYPE_6__*) ;
 TYPE_6__* hb_list_item (int ,int) ;
 int hb_log (char*,...) ;
 char* hb_subsource_name (scalar_t__) ;
 TYPE_4__* lang_for_code (int ) ;
 int snprintf (int ,int,char*,char*,...) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void pes_add_subtitle_to_title(
    hb_stream_t *stream,
    int idx,
    hb_title_t *title,
    int sort)
{
    hb_pes_stream_t *pes = &stream->pes.list[idx];



    int id = get_id( pes );
    int i;
    hb_subtitle_t *tmp = ((void*)0);

    int count = hb_list_count( title->list_subtitle );


    for ( i = 0; i < count; i++ )
    {
        tmp = hb_list_item( title->list_subtitle, i );
        if ( id == tmp->id )
            return;
    }

    hb_subtitle_t *subtitle = calloc( sizeof( hb_subtitle_t ), 1 );
    iso639_lang_t * lang;

    subtitle->track = idx;
    subtitle->id = id;
    subtitle->timebase.num = 1;
    subtitle->timebase.den = 90000;

    switch ( pes->codec )
    {
        case 129:
            subtitle->source = PGSSUB;
            subtitle->format = PICTURESUB;
            subtitle->config.dest = RENDERSUB;
            break;
        case 128:
            subtitle->source = VOBSUB;
            subtitle->format = PICTURESUB;
            subtitle->config.dest = RENDERSUB;
            break;
        default:

            hb_log("unrecognized subtitle!");
            free( subtitle );
            return;
    }
    lang = lang_for_code( pes->lang_code );
    snprintf(subtitle->lang, sizeof( subtitle->lang ), "%s [%s]",
             strlen(lang->native_name) ? lang->native_name : lang->eng_name,
             hb_subsource_name(subtitle->source));
    snprintf(subtitle->iso639_2, sizeof( subtitle->iso639_2 ), "%s",
             lang->iso639_2);
    subtitle->reg_desc = stream->reg_desc;
    subtitle->stream_type = pes->stream_type;
    subtitle->substream_type = pes->stream_id_ext;
    subtitle->codec = pes->codec;



    if ( subtitle->source == VOBSUB )
    {
        subtitle->palette[0] = 0x108080;
        subtitle->palette[1] = 0x108080;
        subtitle->palette[2] = 0x108080;
        subtitle->palette[3] = 0xbff000;

        subtitle->palette[4] = 0xbff000;
        subtitle->palette[5] = 0x108080;
        subtitle->palette[6] = 0x108080;
        subtitle->palette[7] = 0x108080;

        subtitle->palette[8] = 0xbff000;
        subtitle->palette[9] = 0x108080;
        subtitle->palette[10] = 0x108080;
        subtitle->palette[11] = 0x108080;

        subtitle->palette[12] = 0x108080;
        subtitle->palette[13] = 0xbff000;
        subtitle->palette[14] = 0x108080;
        subtitle->palette[15] = 0x108080;
    }

    hb_log("stream id 0x%x (type 0x%x substream 0x%x) subtitle 0x%x",
           pes->stream_id, pes->stream_type, pes->stream_id_ext, subtitle->id);


    if ( sort >= 0 )
    {
        sort = sort < count ? sort : count;
        for ( i = sort; i < count; i++ )
        {
            tmp = hb_list_item( title->list_subtitle, i );
            int sid = tmp->id & 0xffff;
            int ssid = tmp->id >> 16;
            if ( pes->stream_id < sid )
                break;
            else if ( pes->stream_id <= sid &&
                      pes->stream_id_ext <= ssid )
            {
                break;
            }
        }
        hb_list_insert( title->list_subtitle, i, subtitle );
    }
    else
    {
        hb_list_add( title->list_subtitle, subtitle );
    }
}
