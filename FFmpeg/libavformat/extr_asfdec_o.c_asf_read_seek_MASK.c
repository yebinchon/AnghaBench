#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_11__ {int nb_index_entries; TYPE_1__* index_entries; } ;
struct TYPE_10__ {scalar_t__ is_simple_index; } ;
struct TYPE_9__ {TYPE_6__** streams; int /*<<< orphan*/  pb; TYPE_3__* priv_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  pos; } ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ ASFContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, int stream_index,
                         int64_t timestamp, int flags)
{
    ASFContext *asf = s->priv_data;
    int idx, ret;

    if (s->streams[stream_index]->nb_index_entries && asf->is_simple_index) {
        idx = FUNC0(s->streams[stream_index], timestamp, flags);
        if (idx < 0 || idx >= s->streams[stream_index]->nb_index_entries)
            return AVERROR_INVALIDDATA;
        FUNC1(s->pb, s->streams[stream_index]->index_entries[idx].pos, SEEK_SET);
    } else {
        if ((ret = FUNC2(s, stream_index, timestamp, flags)) < 0)
            return ret;
    }

    FUNC3(s);

    return 0;
}