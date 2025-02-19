
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {char* native_name; char* eng_name; int iso639_2; } ;
typedef TYPE_2__ iso639_lang_t ;
struct TYPE_14__ {scalar_t__* name; scalar_t__* src_filename; } ;
struct TYPE_11__ {int num; int den; } ;
struct TYPE_13__ {int id; int source; TYPE_4__ config; int iso639_2; int lang; TYPE_1__ timebase; int codec; int format; } ;
typedef TYPE_3__ hb_subtitle_t ;
typedef TYPE_4__ hb_subtitle_config_t ;
struct TYPE_15__ {int list_subtitle; } ;
typedef TYPE_5__ hb_job_t ;


 int HB_SUBTITLE_IMPORT_TAG ;
 int IMPORTSRT ;
 int TEXTSUB ;
 int WORK_DECSRTSUB ;
 int WORK_DECSSASUB ;
 TYPE_3__* calloc (int,int) ;
 int hb_error (char*) ;
 int hb_list_add (int ,TYPE_3__*) ;
 int hb_list_count (int ) ;
 int hb_log (char*,char const*) ;
 char* hb_subsource_name (int) ;
 TYPE_2__* lang_for_code2 (char const*) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int strcpy (int ,int ) ;
 void* strdup (scalar_t__*) ;
 scalar_t__ strlen (char*) ;

int hb_import_subtitle_add( const hb_job_t * job,
                const hb_subtitle_config_t * subtitlecfg,
                const char *lang_code, int source )
{
    hb_subtitle_t *subtitle;
    iso639_lang_t *lang = ((void*)0);

    subtitle = calloc( 1, sizeof( *subtitle ) );
    if (subtitle == ((void*)0))
    {
        hb_error("hb_srt_add: malloc failed");
        return 0;
    }

    subtitle->id = (hb_list_count(job->list_subtitle) << 8) |
                   HB_SUBTITLE_IMPORT_TAG;
    subtitle->format = TEXTSUB;
    subtitle->source = source;
    subtitle->codec = source == IMPORTSRT ? WORK_DECSRTSUB : WORK_DECSSASUB;
    subtitle->timebase.num = 1;
    subtitle->timebase.den = 90000;

    lang = lang_for_code2(lang_code);
    if (lang == ((void*)0))
    {
        hb_log("hb_srt_add: unknown language code (%s)", lang_code);
        lang = lang_for_code2("und");
    }
    snprintf(subtitle->lang, sizeof(subtitle->lang), "%s [%s]",
             strlen(lang->native_name) ? lang->native_name : lang->eng_name,
             hb_subsource_name(subtitle->source));
    strcpy(subtitle->iso639_2, lang->iso639_2);

    subtitle->config = *subtitlecfg;
    if (subtitlecfg->name != ((void*)0) && subtitlecfg->name[0] != 0)
    {
        subtitle->config.name = strdup(subtitlecfg->name);
    }
    else
    {
        subtitle->config.name = ((void*)0);
    }
    subtitle->config.src_filename = strdup(subtitlecfg->src_filename);
    hb_list_add(job->list_subtitle, subtitle);

    return 1;
}
