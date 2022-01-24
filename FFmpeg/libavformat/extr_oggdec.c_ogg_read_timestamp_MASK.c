#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ogg_stream {int flags; int pflags; scalar_t__ keyframe_seek; int /*<<< orphan*/ * codec; } ;
struct ogg {struct ogg_stream* streams; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_7__ {int /*<<< orphan*/ * pb; struct ogg* priv_data; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int AV_PKT_FLAG_KEY ; 
 int OGG_FLAG_BOS ; 
 int OGG_FLAG_EOS ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ff_ogm_video_codec ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int) ; 

__attribute__((used)) static int64_t FUNC6(AVFormatContext *s, int stream_index,
                                  int64_t *pos_arg, int64_t pos_limit)
{
    struct ogg *ogg = s->priv_data;
    AVIOContext *bc = s->pb;
    int64_t pts     = AV_NOPTS_VALUE;
    int64_t keypos  = -1;
    int i;
    int pstart, psize;
    FUNC0(bc, *pos_arg, SEEK_SET);
    FUNC4(s);

    while (   FUNC1(bc) <= pos_limit
           && !FUNC3(s, &i, &pstart, &psize, pos_arg)) {
        if (i == stream_index) {
            struct ogg_stream *os = ogg->streams + stream_index;
            // Do not trust the last timestamps of an ogm video
            if (    (os->flags & OGG_FLAG_EOS)
                && !(os->flags & OGG_FLAG_BOS)
                && os->codec == &ff_ogm_video_codec)
                continue;
            pts = FUNC2(s, i, NULL);
            FUNC5(s, i, pstart, psize);
            if (os->pflags & AV_PKT_FLAG_KEY) {
                keypos = *pos_arg;
            } else if (os->keyframe_seek) {
                // if we had a previous keyframe but no pts for it,
                // return that keyframe with this pts value.
                if (keypos >= 0)
                    *pos_arg = keypos;
                else
                    pts = AV_NOPTS_VALUE;
            }
        }
        if (pts != AV_NOPTS_VALUE)
            break;
    }
    FUNC4(s);
    return pts;
}