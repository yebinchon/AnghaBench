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
struct TYPE_9__ {int /*<<< orphan*/  samples; } ;
typedef  TYPE_1__ WvMuxContext ;
struct TYPE_10__ {scalar_t__ samples; } ;
typedef  TYPE_2__ WvHeader ;
struct TYPE_12__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_11__ {scalar_t__ size; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ WV_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *ctx, AVPacket *pkt)
{
    WvMuxContext *s = ctx->priv_data;
    WvHeader header;
    int ret;

    if (pkt->size < WV_HEADER_SIZE ||
        (ret = FUNC3(&header, pkt->data)) < 0) {
        FUNC1(ctx, AV_LOG_ERROR, "Invalid WavPack packet.\n");
        return FUNC0(EINVAL);
    }
    s->samples += header.samples;

    FUNC2(ctx->pb, pkt->data, pkt->size);

    return 0;
}