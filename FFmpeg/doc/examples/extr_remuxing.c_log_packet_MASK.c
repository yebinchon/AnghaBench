#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__** streams; } ;
struct TYPE_7__ {size_t stream_index; int /*<<< orphan*/  duration; int /*<<< orphan*/  dts; int /*<<< orphan*/  pts; } ;
struct TYPE_6__ {int /*<<< orphan*/  time_base; } ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*,char*,char*,char*,char*,char*,size_t) ; 

__attribute__((used)) static void FUNC3(const AVFormatContext *fmt_ctx, const AVPacket *pkt, const char *tag)
{
    AVRational *time_base = &fmt_ctx->streams[pkt->stream_index]->time_base;

    FUNC2("%s: pts:%s pts_time:%s dts:%s dts_time:%s duration:%s duration_time:%s stream_index:%d\n",
           tag,
           FUNC0(pkt->pts), FUNC1(pkt->pts, time_base),
           FUNC0(pkt->dts), FUNC1(pkt->dts, time_base),
           FUNC0(pkt->duration), FUNC1(pkt->duration, time_base),
           pkt->stream_index);
}