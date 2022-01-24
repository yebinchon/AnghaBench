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
struct TYPE_12__ {int block_align; } ;
struct TYPE_11__ {int /*<<< orphan*/  pb; TYPE_1__** streams; } ;
struct TYPE_10__ {int duration; int /*<<< orphan*/  data; int /*<<< orphan*/  pos; scalar_t__ stream_index; } ;
struct TYPE_9__ {TYPE_4__* codecpar; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s,
                          AVPacket *pkt)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    int ret;

    if ((ret = FUNC1(pkt, par->block_align)) < 0)
        return ret;

    pkt->stream_index = 0;
    pkt->pos = FUNC4(s->pb);
    pkt->duration = par->block_align == 38 ? 160 : 240;
    if ((ret = FUNC3(s->pb, pkt->data, par->block_align)) != par->block_align) {
        FUNC2(pkt);
        return ret < 0 ? ret : FUNC0(EIO);
    }

    return 0;
}