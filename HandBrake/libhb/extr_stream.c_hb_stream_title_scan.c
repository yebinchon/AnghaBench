
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_21__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct TYPE_28__ {int num; int den; } ;
struct TYPE_30__ {int flags; int list_chapter; int seconds; int minutes; int hours; int duration; int demuxer; TYPE_2__ video_timebase; int video_codec_param; int video_codec; int video_id; int name; int type; } ;
typedef TYPE_4__ hb_title_t ;
struct TYPE_29__ {int PCR_PID; } ;
struct TYPE_26__ {TYPE_21__* list; } ;
struct TYPE_31__ {scalar_t__ hb_stream_type; char* path; int has_IDRs; int ts_flags; TYPE_3__ pmt_info; TYPE_1__ pes; } ;
typedef TYPE_5__ hb_stream_t ;
struct TYPE_32__ {int index; int seconds; int minutes; int hours; int duration; } ;
typedef TYPE_6__ hb_chapter_t ;
struct TYPE_27__ {int codec_param; int codec; } ;


 int HBTF_NO_IDR ;
 int HB_PS_DEMUXER ;
 int HB_STREAM_TYPE ;
 int HB_TS_DEMUXER ;
 int P ;
 int TS_HAS_PCR ;
 TYPE_6__* calloc (int,int) ;
 scalar_t__ ffmpeg ;
 TYPE_4__* ffmpeg_title_scan (TYPE_5__*,TYPE_4__*) ;
 int get_id (TYPE_21__*) ;
 int hb_chapter_set_title (TYPE_6__*,char*) ;
 int hb_init_audio_list (TYPE_5__*,TYPE_4__*) ;
 int hb_init_subtitle_list (TYPE_5__*,TYPE_4__*) ;
 int hb_list_add (int ,TYPE_6__*) ;
 int hb_log (char*) ;
 int hb_stream_duration (TYPE_5__*,TYPE_4__*) ;
 char* hb_strr_dir_sep (char*) ;
 int hb_title_close (TYPE_4__**) ;
 int pes_index_of_video (TYPE_5__*) ;
 int strdup (char*) ;
 char* strrchr (int ,char) ;
 scalar_t__ transport ;
 int update_ts_streams (TYPE_5__*,int ,int ,int,int ,int *) ;

hb_title_t * hb_stream_title_scan(hb_stream_t *stream, hb_title_t * title)
{
    if ( stream->hb_stream_type == ffmpeg )
        return ffmpeg_title_scan( stream, title );


    title->type = HB_STREAM_TYPE;


    char * name = stream->path;
    char * sep = hb_strr_dir_sep(stream->path);
    if (sep)
        name = sep + 1;
    title->name = strdup(name);
    char *dot_term = strrchr(title->name, '.');
    if (dot_term)
        *dot_term = '\0';
    hb_init_audio_list(stream, title);
    hb_init_subtitle_list(stream, title);


    int idx = pes_index_of_video( stream );
    if ( idx < 0 )
    {
        hb_title_close( &title );
        return ((void*)0);
    }

    title->video_id = get_id( &stream->pes.list[idx] );
    title->video_codec = stream->pes.list[idx].codec;
    title->video_codec_param = stream->pes.list[idx].codec_param;
    title->video_timebase.num = 1;
    title->video_timebase.den = 90000;

    if (stream->hb_stream_type == transport)
    {
        title->demuxer = HB_TS_DEMUXER;


        update_ts_streams( stream, stream->pmt_info.PCR_PID, 0, -1, P, ((void*)0) );
    }
    else
    {
        title->demuxer = HB_PS_DEMUXER;
    }


    stream->has_IDRs = 0;
    hb_stream_duration(stream, title);


    hb_chapter_t * chapter;
    chapter = calloc( sizeof( hb_chapter_t ), 1 );
    hb_chapter_set_title( chapter, "Chapter 1" );
    chapter->index = 1;
    chapter->duration = title->duration;
    chapter->hours = title->hours;
    chapter->minutes = title->minutes;
    chapter->seconds = title->seconds;
    hb_list_add( title->list_chapter, chapter );

    if ( stream->has_IDRs < 1 )
    {
        hb_log( "stream doesn't seem to have video IDR frames" );
        title->flags |= HBTF_NO_IDR;
    }

    if ( stream->hb_stream_type == transport &&
         ( stream->ts_flags & TS_HAS_PCR ) == 0 )
    {
        hb_log( "transport stream missing PCRs - using video DTS instead" );
    }



    return title;
}
