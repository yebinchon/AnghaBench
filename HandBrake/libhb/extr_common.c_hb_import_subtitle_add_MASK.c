#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* native_name; char* eng_name; int /*<<< orphan*/  iso639_2; } ;
typedef  TYPE_2__ iso639_lang_t ;
struct TYPE_14__ {scalar_t__* name; scalar_t__* src_filename; } ;
struct TYPE_11__ {int num; int den; } ;
struct TYPE_13__ {int id; int source; TYPE_4__ config; int /*<<< orphan*/  iso639_2; int /*<<< orphan*/  lang; TYPE_1__ timebase; int /*<<< orphan*/  codec; int /*<<< orphan*/  format; } ;
typedef  TYPE_3__ hb_subtitle_t ;
typedef  TYPE_4__ hb_subtitle_config_t ;
struct TYPE_15__ {int /*<<< orphan*/  list_subtitle; } ;
typedef  TYPE_5__ hb_job_t ;

/* Variables and functions */
 int HB_SUBTITLE_IMPORT_TAG ; 
 int IMPORTSRT ; 
 int /*<<< orphan*/  TEXTSUB ; 
 int /*<<< orphan*/  WORK_DECSRTSUB ; 
 int /*<<< orphan*/  WORK_DECSSASUB ; 
 TYPE_3__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 char* FUNC5 (int) ; 
 TYPE_2__* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC9 (scalar_t__*) ; 
 scalar_t__ FUNC10 (char*) ; 

int FUNC11( const hb_job_t * job,
                const hb_subtitle_config_t * subtitlecfg,
                const char *lang_code, int source )
{
    hb_subtitle_t *subtitle;
    iso639_lang_t *lang = NULL;

    subtitle = FUNC0( 1, sizeof( *subtitle ) );
    if (subtitle == NULL)
    {
        FUNC1("hb_srt_add: malloc failed");
        return 0;
    }

    subtitle->id = (FUNC3(job->list_subtitle) << 8) |
                   HB_SUBTITLE_IMPORT_TAG;
    subtitle->format = TEXTSUB;
    subtitle->source = source;
    subtitle->codec = source == IMPORTSRT ? WORK_DECSRTSUB : WORK_DECSSASUB;
    subtitle->timebase.num = 1;
    subtitle->timebase.den = 90000;

    lang = FUNC6(lang_code);
    if (lang == NULL)
    {
        FUNC4("hb_srt_add: unknown language code (%s)", lang_code);
        lang = FUNC6("und");
    }
    FUNC7(subtitle->lang, sizeof(subtitle->lang), "%s [%s]",
             FUNC10(lang->native_name) ? lang->native_name : lang->eng_name,
             FUNC5(subtitle->source));
    FUNC8(subtitle->iso639_2, lang->iso639_2);

    subtitle->config = *subtitlecfg;
    if (subtitlecfg->name != NULL && subtitlecfg->name[0] != 0)
    {
        subtitle->config.name = FUNC9(subtitlecfg->name);
    }
    else
    {
        subtitle->config.name = NULL;
    }
    subtitle->config.src_filename = FUNC9(subtitlecfg->src_filename);
    FUNC2(job->list_subtitle, subtitle);

    return 1;
}