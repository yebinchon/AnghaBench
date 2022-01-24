#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_10__ {int /*<<< orphan*/  pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_9__ {TYPE_1__* index_entries; } ;
struct TYPE_8__ {int current_sample; } ;
struct TYPE_7__ {int /*<<< orphan*/  pos; } ;
typedef  TYPE_2__ FilmDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (TYPE_3__*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(AVFormatContext *s, int stream_index, int64_t timestamp, int flags)
{
    FilmDemuxContext *film = s->priv_data;
    AVStream *st = s->streams[stream_index];
    int64_t pos;
    int ret = FUNC0(st, timestamp, flags);
    if (ret < 0)
        return ret;

    pos = FUNC1(s->pb, st->index_entries[ret].pos, SEEK_SET);
    if (pos < 0)
        return pos;

    film->current_sample = ret;

    return 0;
}