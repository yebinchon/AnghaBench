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
struct dshow_ctx {int eof; int /*<<< orphan*/ * event; int /*<<< orphan*/  media_event; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * curbufsize; TYPE_1__* pktl; } ;
struct TYPE_9__ {int flags; struct dshow_ctx* priv_data; } ;
struct TYPE_8__ {size_t stream_index; int size; } ;
struct TYPE_7__ {struct TYPE_7__* next; TYPE_2__ pkt; } ;
typedef  TYPE_1__ AVPacketList ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVFMT_FLAG_NONBLOCK ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, AVPacket *pkt)
{
    struct dshow_ctx *ctx = s->priv_data;
    AVPacketList *pktl = NULL;

    while (!ctx->eof && !pktl) {
        FUNC4(ctx->mutex, INFINITE);
        pktl = ctx->pktl;
        if (pktl) {
            *pkt = pktl->pkt;
            ctx->pktl = ctx->pktl->next;
            FUNC5(pktl);
            ctx->curbufsize[pkt->stream_index] -= pkt->size;
        }
        FUNC2(ctx->event[1]);
        FUNC1(ctx->mutex);
        if (!pktl) {
            if (FUNC6(ctx->media_event) < 0) {
                ctx->eof = 1;
            } else if (s->flags & AVFMT_FLAG_NONBLOCK) {
                return FUNC0(EAGAIN);
            } else {
                FUNC3(2, ctx->event, 0, INFINITE);
            }
        }
    }

    return ctx->eof ? FUNC0(EIO) : pkt->size;
}