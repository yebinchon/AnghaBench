#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {TYPE_2__** streams; } ;
struct TYPE_10__ {int size; scalar_t__ duration; scalar_t__ data; scalar_t__ pts; scalar_t__ dts; } ;
struct TYPE_9__ {scalar_t__ cur_dts; scalar_t__ duration; scalar_t__ start_time; TYPE_1__* codecpar; } ;
struct TYPE_8__ {scalar_t__ frame_size; } ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *avf, AVPacket *packet)
{
    int64_t ts, end_ts;

    ts = avf->streams[0]->cur_dts;
    end_ts = ts + avf->streams[0]->codecpar->frame_size;
    if (avf->streams[0]->duration != AV_NOPTS_VALUE)
        end_ts = FUNC3(avf->streams[0]->start_time + avf->streams[0]->duration,
                       end_ts);
    if (end_ts <= ts)
        return AVERROR_EOF;
    if (FUNC4(packet, 12) < 0)
        return FUNC0(ENOMEM);
    packet->dts = packet->pts = ts;
    packet->duration = end_ts - ts;
    FUNC2(packet->data + 0, ts);
    FUNC1(packet->data + 8, packet->duration);
    return packet->size;
}