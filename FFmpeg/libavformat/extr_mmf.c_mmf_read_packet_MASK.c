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
struct TYPE_9__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {scalar_t__ stream_index; } ;
struct TYPE_7__ {scalar_t__ data_end; } ;
typedef  TYPE_1__ MMFContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s, AVPacket *pkt)
{
    MMFContext *mmf = s->priv_data;
    int64_t left, size;
    int ret;

    left = mmf->data_end - FUNC3(s->pb);
    size = FUNC0(left, MAX_SIZE);
    if (FUNC2(s->pb) || size <= 0)
        return AVERROR_EOF;

    ret = FUNC1(s->pb, pkt, size);
    if (ret < 0)
        return ret;

    pkt->stream_index = 0;

    return ret;
}