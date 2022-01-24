#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ogg_stream {int keyframe_seek; } ;
struct ogg {int nstreams; struct ogg_stream* streams; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_9__ {TYPE_2__** streams; struct ogg* priv_data; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {scalar_t__ codec_type; } ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int AVSEEK_FLAG_ANY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, int stream_index,
                         int64_t timestamp, int flags)
{
    struct ogg *ogg       = s->priv_data;
    struct ogg_stream *os = ogg->streams + stream_index;
    int ret;

    FUNC0(stream_index < ogg->nstreams);
    // Ensure everything is reset even when seeking via
    // the generated index.
    FUNC2(s);

    // Try seeking to a keyframe first. If this fails (very possible),
    // av_seek_frame will fall back to ignoring keyframes
    if (s->streams[stream_index]->codecpar->codec_type == AVMEDIA_TYPE_VIDEO
        && !(flags & AVSEEK_FLAG_ANY))
        os->keyframe_seek = 1;

    ret = FUNC1(s, stream_index, timestamp, flags);
    FUNC2(s);
    os  = ogg->streams + stream_index;
    if (ret < 0)
        os->keyframe_seek = 0;
    return ret;
}