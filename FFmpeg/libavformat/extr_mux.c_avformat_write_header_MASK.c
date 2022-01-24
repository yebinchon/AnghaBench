#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int error; } ;
struct TYPE_13__ {TYPE_2__* internal; TYPE_8__* pb; TYPE_1__* oformat; } ;
struct TYPE_12__ {int initialized; int streams_initialized; } ;
struct TYPE_11__ {int flags; int (* write_header ) (TYPE_3__*) ;} ;
typedef  TYPE_3__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int AVFMT_NOFILE ; 
 int /*<<< orphan*/  AVIO_DATA_MARKER_HEADER ; 
 int /*<<< orphan*/  AVIO_DATA_MARKER_UNKNOWN ; 
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 

int FUNC6(AVFormatContext *s, AVDictionary **options)
{
    int ret = 0;
    int already_initialized = s->internal->initialized;
    int streams_already_initialized = s->internal->streams_initialized;

    if (!already_initialized)
        if ((ret = FUNC0(s, options)) < 0)
            return ret;

    if (!(s->oformat->flags & AVFMT_NOFILE) && s->pb)
        FUNC1(s->pb, AV_NOPTS_VALUE, AVIO_DATA_MARKER_HEADER);
    if (s->oformat->write_header) {
        ret = s->oformat->write_header(s);
        if (ret >= 0 && s->pb && s->pb->error < 0)
            ret = s->pb->error;
        if (ret < 0)
            goto fail;
        FUNC3(s);
    }
    if (!(s->oformat->flags & AVFMT_NOFILE) && s->pb)
        FUNC1(s->pb, AV_NOPTS_VALUE, AVIO_DATA_MARKER_UNKNOWN);

    if (!s->internal->streams_initialized) {
        if ((ret = FUNC4(s)) < 0)
            goto fail;
    }

    return streams_already_initialized;

fail:
    FUNC2(s);
    return ret;
}