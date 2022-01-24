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
struct TYPE_8__ {TYPE_1__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_7__ {scalar_t__ pts; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {scalar_t__ last_pts; scalar_t__ frame_cnt; int /*<<< orphan*/  sum_delta_pts; } ;
typedef  TYPE_1__ IVFEncContext ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, AVPacket *pkt)
{
    AVIOContext *pb = s->pb;
    IVFEncContext *ctx = s->priv_data;

    FUNC0(pb, pkt->size);
    FUNC1(pb, pkt->pts);
    FUNC2(pb, pkt->data, pkt->size);
    if (ctx->frame_cnt)
        ctx->sum_delta_pts += pkt->pts - ctx->last_pts;
    ctx->frame_cnt++;
    ctx->last_pts = pkt->pts;

    return 0;
}