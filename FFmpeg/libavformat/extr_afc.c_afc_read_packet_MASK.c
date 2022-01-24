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
typedef  scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ data_end; } ;
struct TYPE_8__ {int /*<<< orphan*/  pb; TYPE_3__* priv_data; } ;
struct TYPE_7__ {scalar_t__ stream_index; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AFCDemuxContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVPacket *pkt)
{
    AFCDemuxContext *c = s->priv_data;
    int64_t size;
    int ret;

    size = FUNC0(c->data_end - FUNC2(s->pb), 18 * 128);
    if (size <= 0)
        return AVERROR_EOF;

    ret = FUNC1(s->pb, pkt, size);
    pkt->stream_index = 0;
    return ret;
}