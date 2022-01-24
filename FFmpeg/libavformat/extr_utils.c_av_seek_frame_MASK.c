#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_8__ {TYPE_1__* iformat; } ;
struct TYPE_7__ {int /*<<< orphan*/  read_seek; scalar_t__ read_seek2; } ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVSEEK_FLAG_BACKWARD ; 
 int /*<<< orphan*/  INT64_MAX ; 
 int /*<<< orphan*/  INT64_MIN ; 
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int) ; 

int FUNC3(AVFormatContext *s, int stream_index,
                  int64_t timestamp, int flags)
{
    int ret;

    if (s->iformat->read_seek2 && !s->iformat->read_seek) {
        int64_t min_ts = INT64_MIN, max_ts = INT64_MAX;
        if ((flags & AVSEEK_FLAG_BACKWARD))
            max_ts = timestamp;
        else
            min_ts = timestamp;
        return FUNC1(s, stream_index, min_ts, timestamp, max_ts,
                                  flags & ~AVSEEK_FLAG_BACKWARD);
    }

    ret = FUNC2(s, stream_index, timestamp, flags);

    if (ret >= 0)
        ret = FUNC0(s);

    return ret;
}