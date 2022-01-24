#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_13__ {int chapter; int chapter_end; size_t ffmpeg_video_id; int need_keyframe; TYPE_6__* ffmpeg_ic; TYPE_1__* title; } ;
typedef  TYPE_3__ hb_stream_t ;
struct TYPE_14__ {int duration; } ;
typedef  TYPE_4__ hb_chapter_t ;
struct TYPE_16__ {TYPE_5__** streams; } ;
struct TYPE_12__ {scalar_t__ num; int /*<<< orphan*/  den; } ;
struct TYPE_15__ {TYPE_2__ time_base; } ;
struct TYPE_11__ {int /*<<< orphan*/  list_chapter; } ;
typedef  TYPE_5__ AVStream ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int AV_TIME_BASE ; 
 int INT64_MAX ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_6__*,size_t,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5( hb_stream_t *stream, int64_t ts )
{
    AVFormatContext *ic = stream->ffmpeg_ic;
    int64_t pos;
    int ret;

    // Find the initial chapter we have seeked into
    int count = FUNC3(stream->title->list_chapter);
    if (count > 0)
    {
        int64_t        sum_dur = 0;
        hb_chapter_t * chapter;
        int            ii;
        for (ii = 0; ii < count; ii++)
        {
            chapter = FUNC4( stream->title->list_chapter, ii );
            if (sum_dur + chapter->duration > ts)
            {
                break;
            }
            sum_dur += chapter->duration;
        }
        stream->chapter     = ii;
        stream->chapter_end = sum_dur;
    }
    else
    {
        stream->chapter     = 0;
        stream->chapter_end = INT64_MAX;
    }

    pos = ts * AV_TIME_BASE / 90000 + FUNC2( stream );
    AVStream *st = stream->ffmpeg_ic->streams[stream->ffmpeg_video_id];
    // timebase must be adjusted to match timebase of stream we are
    // using for seeking.
    pos = FUNC0(pos, st->time_base.den, AV_TIME_BASE * (int64_t)st->time_base.num);
    stream->need_keyframe = 1;
    // Seek to the nearest timestamp before that requested where
    // there is an I-frame
    ret = FUNC1( ic, stream->ffmpeg_video_id, 0, pos, pos, 0);
    return ret;
}