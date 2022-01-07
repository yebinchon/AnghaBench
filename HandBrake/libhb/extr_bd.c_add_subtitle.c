
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {char* native_name; char* eng_name; char* iso639_2; } ;
typedef TYPE_3__ iso639_lang_t ;
struct TYPE_12__ {int num; int den; } ;
struct TYPE_11__ {int dest; } ;
struct TYPE_14__ {int track; int stream_type; int iso639_2; int lang; int id; TYPE_2__ timebase; int codec; int reg_desc; int source; TYPE_1__ config; int format; } ;
typedef TYPE_4__ hb_subtitle_t ;
typedef int hb_list_t ;
struct TYPE_15__ {int coding_type; scalar_t__ lang; int pid; } ;
typedef TYPE_5__ BLURAY_STREAM_INFO ;



 int PGSSUB ;
 int PICTURESUB ;
 int RENDERSUB ;
 int STR4_TO_UINT32 (char*) ;
 TYPE_4__* calloc (int,int) ;
 int free (TYPE_4__*) ;
 int hb_list_add (int *,TYPE_4__*) ;
 int hb_log (char*,int ,int ,int ) ;
 char* hb_subsource_name (int ) ;
 TYPE_3__* lang_for_code2 (char*) ;
 int snprintf (int ,int,char*,char*,...) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void add_subtitle(int track, hb_list_t *list_subtitle, BLURAY_STREAM_INFO *bdsub, uint32_t codec)
{
    hb_subtitle_t * subtitle;
    iso639_lang_t * lang;

    subtitle = calloc( sizeof( hb_subtitle_t ), 1 );

    subtitle->track = track;
    subtitle->id = bdsub->pid;

    switch ( bdsub->coding_type )
    {
        case 128:
            subtitle->source = PGSSUB;
            subtitle->format = PICTURESUB;
            subtitle->config.dest = RENDERSUB;
            break;
        default:

            free( subtitle );
            return;
    }
    lang = lang_for_code2( (char*)bdsub->lang );
    snprintf(subtitle->lang, sizeof( subtitle->lang ), "%s [%s]",
             strlen(lang->native_name) ? lang->native_name : lang->eng_name,
             hb_subsource_name(subtitle->source));
    snprintf(subtitle->iso639_2, sizeof( subtitle->iso639_2 ), "%s",
             lang->iso639_2);

    subtitle->reg_desc = STR4_TO_UINT32("HDMV");
    subtitle->stream_type = bdsub->coding_type;
    subtitle->codec = codec;
    subtitle->timebase.num = 1;
    subtitle->timebase.den = 90000;

    hb_log( "bd: subtitle id=0x%x, lang=%s, 3cc=%s", subtitle->id,
            subtitle->lang, subtitle->iso639_2 );

    hb_list_add( list_subtitle, subtitle );
    return;
}
