#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {char* native_name; char* eng_name; char* iso639_2; } ;
typedef  TYPE_4__ iso639_lang_t ;
struct TYPE_22__ {int /*<<< orphan*/  list_subtitle; } ;
typedef  TYPE_5__ hb_title_t ;
struct TYPE_20__ {void* dest; } ;
struct TYPE_19__ {int num; int den; } ;
struct TYPE_23__ {int id; int track; scalar_t__ source; int substream_type; int codec; int* palette; int /*<<< orphan*/  stream_type; int /*<<< orphan*/  reg_desc; int /*<<< orphan*/  iso639_2; int /*<<< orphan*/  lang; TYPE_3__ config; void* format; TYPE_2__ timebase; } ;
typedef  TYPE_6__ hb_subtitle_t ;
struct TYPE_18__ {TYPE_8__* list; } ;
struct TYPE_24__ {int /*<<< orphan*/  reg_desc; TYPE_1__ pes; } ;
typedef  TYPE_7__ hb_stream_t ;
struct TYPE_25__ {int codec; int stream_id_ext; int stream_id; int /*<<< orphan*/  stream_type; int /*<<< orphan*/  lang_code; } ;
typedef  TYPE_8__ hb_pes_stream_t ;

/* Variables and functions */
 scalar_t__ PGSSUB ; 
 void* PICTURESUB ; 
 void* RENDERSUB ; 
 scalar_t__ VOBSUB ; 
#define  WORK_DECPGSSUB 129 
#define  WORK_DECVOBSUB 128 
 TYPE_6__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int FUNC2 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,TYPE_6__*) ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (scalar_t__) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,char*,...) ; 
 scalar_t__ FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(
    hb_stream_t *stream,
    int         idx,
    hb_title_t  *title,
    int         sort)
{
    hb_pes_stream_t *pes = &stream->pes.list[idx];

    // Sort by id when adding to the list
    // This assures that they are always displayed in the same order
    int id = FUNC2( pes );
    int i;
    hb_subtitle_t *tmp = NULL;

    int count = FUNC4( title->list_subtitle );

    // Don't add the same audio twice.  Search for audio.
    for ( i = 0; i < count; i++ )
    {
        tmp = FUNC6( title->list_subtitle, i );
        if ( id == tmp->id )
            return;
    }

    hb_subtitle_t *subtitle = FUNC0( sizeof( hb_subtitle_t ), 1 );
    iso639_lang_t * lang;

    subtitle->track        = idx;
    subtitle->id           = id;
    subtitle->timebase.num = 1;
    subtitle->timebase.den = 90000;

    switch ( pes->codec )
    {
        case WORK_DECPGSSUB:
            subtitle->source = PGSSUB;
            subtitle->format = PICTURESUB;
            subtitle->config.dest = RENDERSUB;
            break;
        case WORK_DECVOBSUB:
            subtitle->source = VOBSUB;
            subtitle->format = PICTURESUB;
            subtitle->config.dest = RENDERSUB;
            break;
        default:
            // Unrecognized, don't add to list
            FUNC7("unrecognized subtitle!");
            FUNC1( subtitle );
            return;
    }
    lang = FUNC9( pes->lang_code );
    FUNC10(subtitle->lang, sizeof( subtitle->lang ), "%s [%s]",
             FUNC11(lang->native_name) ? lang->native_name : lang->eng_name,
             FUNC8(subtitle->source));
    FUNC10(subtitle->iso639_2, sizeof( subtitle->iso639_2 ), "%s",
             lang->iso639_2);
    subtitle->reg_desc = stream->reg_desc;
    subtitle->stream_type = pes->stream_type;
    subtitle->substream_type = pes->stream_id_ext;
    subtitle->codec = pes->codec;

    // Create a default palette since vob files do not include the
    // vobsub palette.
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

    FUNC7("stream id 0x%x (type 0x%x substream 0x%x) subtitle 0x%x",
           pes->stream_id, pes->stream_type, pes->stream_id_ext, subtitle->id);

    // Search for the sort position
    if ( sort >= 0 )
    {
        sort = sort < count ? sort : count;
        for ( i = sort; i < count; i++ )
        {
            tmp = FUNC6( title->list_subtitle, i );
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
        FUNC5( title->list_subtitle, i, subtitle );
    }
    else
    {
        FUNC3( title->list_subtitle, subtitle );
    }
}