#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_12__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_11__ {TYPE_1__* sys; } ;
struct TYPE_10__ {TYPE_3__* dv_demux; } ;
struct TYPE_9__ {int frame_size; } ;
typedef  TYPE_2__ RawDVContext ;
typedef  TYPE_3__ DVDemuxContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__*,TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, int stream_index,
                        int64_t timestamp, int flags)
{
    RawDVContext *r   = s->priv_data;
    DVDemuxContext *c = r->dv_demux;
    int64_t offset    = FUNC1(s, c, timestamp, flags);

    if (FUNC0(s->pb, offset, SEEK_SET) < 0)
        return -1;

    FUNC2(c, offset / c->sys->frame_size);
    return 0;
}