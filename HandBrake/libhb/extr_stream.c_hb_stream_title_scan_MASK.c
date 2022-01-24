#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_21__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int num; int den; } ;
struct TYPE_30__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  list_chapter; int /*<<< orphan*/  seconds; int /*<<< orphan*/  minutes; int /*<<< orphan*/  hours; int /*<<< orphan*/  duration; int /*<<< orphan*/  demuxer; TYPE_2__ video_timebase; int /*<<< orphan*/  video_codec_param; int /*<<< orphan*/  video_codec; int /*<<< orphan*/  video_id; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
typedef  TYPE_4__ hb_title_t ;
struct TYPE_29__ {int /*<<< orphan*/  PCR_PID; } ;
struct TYPE_26__ {TYPE_21__* list; } ;
struct TYPE_31__ {scalar_t__ hb_stream_type; char* path; int has_IDRs; int ts_flags; TYPE_3__ pmt_info; TYPE_1__ pes; } ;
typedef  TYPE_5__ hb_stream_t ;
struct TYPE_32__ {int index; int /*<<< orphan*/  seconds; int /*<<< orphan*/  minutes; int /*<<< orphan*/  hours; int /*<<< orphan*/  duration; } ;
typedef  TYPE_6__ hb_chapter_t ;
struct TYPE_27__ {int /*<<< orphan*/  codec_param; int /*<<< orphan*/  codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBTF_NO_IDR ; 
 int /*<<< orphan*/  HB_PS_DEMUXER ; 
 int /*<<< orphan*/  HB_STREAM_TYPE ; 
 int /*<<< orphan*/  HB_TS_DEMUXER ; 
 int /*<<< orphan*/  P ; 
 int TS_HAS_PCR ; 
 TYPE_6__* FUNC0 (int,int) ; 
 scalar_t__ ffmpeg ; 
 TYPE_4__* FUNC1 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_21__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_4__*) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__**) ; 
 int FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ transport ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

hb_title_t * FUNC15(hb_stream_t *stream, hb_title_t * title)
{
    if ( stream->hb_stream_type == ffmpeg )
        return FUNC1( stream, title );

    // 'Barebones Title'
    title->type = HB_STREAM_TYPE;

    // Copy part of the stream path to the title name
    char * name = stream->path;
    char * sep  = FUNC9(stream->path);
    if (sep)
        name = sep + 1;
    title->name = FUNC12(name);
    char *dot_term = FUNC13(title->name, '.');
    if (dot_term)
        *dot_term = '\0';

    // Figure out how many audio streams we really have:
    // - For transport streams, for each PID listed in the PMT (whether
    //   or not it was an audio stream type) read the bitstream until we
    //   find an packet from that PID containing a PES header and see if
    //   the elementary stream is an audio type.
    // - For program streams read the first 4MB and take every unique
    //   audio stream we find.
    FUNC4(stream, title);
    FUNC5(stream, title);

    // set the video id, codec & muxer
    int idx = FUNC11( stream );
    if ( idx < 0 )
    {
        FUNC10( &title );
        return NULL;
    }

    title->video_id = FUNC2( &stream->pes.list[idx] );
    title->video_codec = stream->pes.list[idx].codec;
    title->video_codec_param = stream->pes.list[idx].codec_param;
    title->video_timebase.num = 1;
    title->video_timebase.den = 90000;

    if (stream->hb_stream_type == transport)
    {
        title->demuxer = HB_TS_DEMUXER;

        // make sure we're grabbing the PCR PID
        FUNC14( stream, stream->pmt_info.PCR_PID, 0, -1, P, NULL );
    }
    else
    {
        title->demuxer = HB_PS_DEMUXER;
    }

    // IDRs will be search for in hb_stream_duration
    stream->has_IDRs = 0;
    FUNC8(stream, title);

    // One Chapter
    hb_chapter_t * chapter;
    chapter = FUNC0( sizeof( hb_chapter_t ), 1 );
    FUNC3( chapter, "Chapter 1" );
    chapter->index = 1;
    chapter->duration = title->duration;
    chapter->hours = title->hours;
    chapter->minutes = title->minutes;
    chapter->seconds = title->seconds;
    FUNC6( title->list_chapter, chapter );

    if ( stream->has_IDRs < 1 )
    {
        FUNC7( "stream doesn't seem to have video IDR frames" );
        title->flags |= HBTF_NO_IDR;
    }

    if ( stream->hb_stream_type == transport &&
         ( stream->ts_flags & TS_HAS_PCR ) == 0 )
    {
        FUNC7( "transport stream missing PCRs - using video DTS instead" );
    }

    // Height, width, rate and aspect ratio information is filled in
    // when the previews are built
    return title;
}