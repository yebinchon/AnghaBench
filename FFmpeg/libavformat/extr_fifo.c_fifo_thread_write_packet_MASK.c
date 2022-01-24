#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__** streams; TYPE_3__* priv_data; } ;
struct TYPE_16__ {int flags; int stream_index; } ;
struct TYPE_15__ {TYPE_5__* avf; } ;
struct TYPE_14__ {scalar_t__ drop_until_keyframe; TYPE_5__* avf; } ;
struct TYPE_13__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_2__ FifoThreadContext ;
typedef  TYPE_3__ FifoContext ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_5__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC4(FifoThreadContext *ctx, AVPacket *pkt)
{
    AVFormatContext *avf = ctx->avf;
    FifoContext *fifo = avf->priv_data;
    AVFormatContext *avf2 = fifo->avf;
    AVRational src_tb, dst_tb;
    int ret, s_idx;

    if (ctx->drop_until_keyframe) {
        if (pkt->flags & AV_PKT_FLAG_KEY) {
            ctx->drop_until_keyframe = 0;
            FUNC0(avf, AV_LOG_VERBOSE, "Keyframe received, recovering...\n");
        } else {
            FUNC0(avf, AV_LOG_VERBOSE, "Dropping non-keyframe packet\n");
            FUNC2(pkt);
            return 0;
        }
    }

    s_idx = pkt->stream_index;
    src_tb = avf->streams[s_idx]->time_base;
    dst_tb = avf2->streams[s_idx]->time_base;
    FUNC1(pkt, src_tb, dst_tb);

    ret = FUNC3(avf2, pkt);
    if (ret >= 0)
        FUNC2(pkt);
    return ret;
}