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
typedef  int uint64_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_9__ {int /*<<< orphan*/  pb; TYPE_2__** streams; } ;
struct TYPE_8__ {scalar_t__ start_time; int nb_index_entries; TYPE_1__* index_entries; } ;
struct TYPE_7__ {int pos; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVSEEK_FLAG_ANY ; 
 int AVSEEK_FLAG_BACKWARD ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC2 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int,int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, int stream_index, int64_t timestamp, int flags) {
    int64_t res = 0;
    uint64_t pos;
    uint64_t maxlen = 100 * 1024 * 1024;
    AVStream *st = s->streams[0];
    int64_t start_time = s->streams[stream_index]->start_time;
    int64_t found;
    int idx;
    if (timestamp < start_time) timestamp = start_time;
    idx = FUNC2(st, timestamp - start_time,
                                    AVSEEK_FLAG_ANY | AVSEEK_FLAG_BACKWARD);
    if (idx < 0)
        return -1;
    pos = st->index_entries[idx].pos;
    if (idx < st->nb_index_entries - 2)
        maxlen = st->index_entries[idx + 2].pos - pos;
    maxlen = FUNC1(maxlen, 200 * 1024);
    res = FUNC3(s->pb, pos, SEEK_SET);
    if (res < 0)
        return res;
    found = FUNC4(s, maxlen, -1, timestamp);
    if (FUNC0(found - timestamp) > 4)
        return -1;
    return 0;
}