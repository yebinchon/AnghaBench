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
struct AVFormatContext {TYPE_2__** streams; } ;
struct TYPE_8__ {size_t stream_index; int size; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_1__* codecpar; } ;
struct TYPE_6__ {scalar_t__ codec_id; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_AAC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct AVFormatContext *s, const AVPacket *pkt)
{
    int ret = 1;
    AVStream *st = s->streams[pkt->stream_index];

    if (st->codecpar->codec_id == AV_CODEC_ID_AAC) {
        if (pkt->size > 2 && (FUNC0(pkt->data) & 0xfff0) == 0xfff0)
            ret = FUNC1(st, "aac_adtstoasc", NULL);
    }

    return ret;
}