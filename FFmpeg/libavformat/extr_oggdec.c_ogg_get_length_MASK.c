#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct ogg {int page_pos; TYPE_3__* streams; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_19__ {scalar_t__ duration; TYPE_2__** streams; TYPE_1__* internal; TYPE_13__* pb; struct ogg* priv_data; } ;
struct TYPE_18__ {int granule; int got_start; scalar_t__ codec; } ;
struct TYPE_17__ {scalar_t__ duration; scalar_t__ start_time; } ;
struct TYPE_16__ {scalar_t__ data_offset; } ;
struct TYPE_15__ {int seekable; } ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 scalar_t__ MAX_PAGE_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_13__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_13__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    struct ogg *ogg = s->priv_data;
    int i, ret;
    int64_t size, end;
    int streams_left=0;

    if (!(s->pb->seekable & AVIO_SEEKABLE_NORMAL))
        return 0;

// already set
    if (s->duration != AV_NOPTS_VALUE)
        return 0;

    size = FUNC1(s->pb);
    if (size < 0)
        return 0;
    end = size > MAX_PAGE_SIZE ? size - MAX_PAGE_SIZE : 0;

    ret = FUNC8(s);
    if (ret < 0)
        return ret;
    FUNC0(s->pb, end, SEEK_SET);
    ogg->page_pos = -1;

    while (!FUNC5(s, &i)) {
        if (ogg->streams[i].granule != -1 && ogg->streams[i].granule != 0 &&
            ogg->streams[i].codec) {
            s->streams[i]->duration =
                FUNC3(s, i, ogg->streams[i].granule, NULL);
            if (s->streams[i]->start_time != AV_NOPTS_VALUE) {
                s->streams[i]->duration -= s->streams[i]->start_time;
                streams_left-= (ogg->streams[i].got_start==-1);
                ogg->streams[i].got_start= 1;
            } else if(!ogg->streams[i].got_start) {
                ogg->streams[i].got_start= -1;
                streams_left++;
            }
        }
    }

    FUNC7(s);

    ret = FUNC8(s);
    if (ret < 0)
        return ret;

    FUNC0 (s->pb, s->internal->data_offset, SEEK_SET);
    FUNC6(s);
    while (streams_left > 0 && !FUNC4(s, &i, NULL, NULL, NULL)) {
        int64_t pts;
        if (i < 0) continue;
        pts = FUNC2(s, i, NULL);
        if (s->streams[i]->duration == AV_NOPTS_VALUE)
            continue;
        if (pts != AV_NOPTS_VALUE && s->streams[i]->start_time == AV_NOPTS_VALUE && !ogg->streams[i].got_start) {
            s->streams[i]->duration -= pts;
            ogg->streams[i].got_start= 1;
            streams_left--;
        }else if(s->streams[i]->start_time != AV_NOPTS_VALUE && !ogg->streams[i].got_start) {
            ogg->streams[i].got_start= 1;
            streams_left--;
        }
    }
    FUNC7 (s);

    return 0;
}