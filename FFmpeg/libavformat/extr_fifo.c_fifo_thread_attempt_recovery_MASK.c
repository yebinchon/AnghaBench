#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_22__ {TYPE_1__** streams; TYPE_4__* priv_data; } ;
struct TYPE_21__ {size_t stream_index; scalar_t__ pts; } ;
struct TYPE_20__ {scalar_t__ recovery_wait_time; scalar_t__ drop_pkts_on_overflow; scalar_t__ restart_with_keyframe; scalar_t__ max_recovery_attempts; scalar_t__ recovery_wait_streamtime; int /*<<< orphan*/  write_trailer_ret; } ;
struct TYPE_19__ {TYPE_5__ pkt; } ;
struct TYPE_18__ {scalar_t__ last_recovery_ts; int drop_until_keyframe; scalar_t__ recovery_nr; scalar_t__ header_written; TYPE_6__* avf; } ;
struct TYPE_17__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_2__ FifoThreadContext ;
typedef  TYPE_3__ FifoMessage ;
typedef  TYPE_4__ FifoContext ;
typedef  int /*<<< orphan*/  AVRational ;
typedef  TYPE_5__ AVPacket ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC9(FifoThreadContext *ctx, FifoMessage *msg, int err_no)
{
    AVFormatContext *avf = ctx->avf;
    FifoContext *fifo = avf->priv_data;
    AVPacket *pkt = &msg->pkt;
    int64_t time_since_recovery;
    int ret;

    if (!FUNC8(fifo, err_no)) {
        ret = err_no;
        goto fail;
    }

    if (ctx->header_written) {
        fifo->write_trailer_ret = FUNC6(ctx);
        ctx->header_written = 0;
    }

    if (!ctx->recovery_nr) {
        ctx->last_recovery_ts = fifo->recovery_wait_streamtime ?
                                AV_NOPTS_VALUE : 0;
    } else {
        if (fifo->recovery_wait_streamtime) {
            if (ctx->last_recovery_ts == AV_NOPTS_VALUE) {
                AVRational tb = avf->streams[pkt->stream_index]->time_base;
                time_since_recovery = FUNC3(pkt->pts - ctx->last_recovery_ts,
                                                   tb, AV_TIME_BASE_Q);
            } else {
                /* Enforce recovery immediately */
                time_since_recovery = fifo->recovery_wait_time;
            }
        } else {
            time_since_recovery = FUNC1() - ctx->last_recovery_ts;
        }

        if (time_since_recovery < fifo->recovery_wait_time)
            return FUNC0(EAGAIN);
    }

    ctx->recovery_nr++;

    if (fifo->max_recovery_attempts) {
        FUNC2(avf, AV_LOG_VERBOSE, "Recovery attempt #%d/%d\n",
               ctx->recovery_nr, fifo->max_recovery_attempts);
    } else {
        FUNC2(avf, AV_LOG_VERBOSE, "Recovery attempt #%d\n",
               ctx->recovery_nr);
    }

    if (fifo->restart_with_keyframe && fifo->drop_pkts_on_overflow)
        ctx->drop_until_keyframe = 1;

    ret = FUNC4(ctx, msg);
    if (ret < 0) {
        if (FUNC8(fifo, ret)) {
            return FUNC5(ctx, pkt, ret);
        } else {
            goto fail;
        }
    } else {
        FUNC2(avf, AV_LOG_INFO, "Recovery successful\n");
        ctx->recovery_nr = 0;
    }

    return 0;

fail:
    FUNC7(msg);
    return ret;
}