#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  is_mpeg2; } ;
typedef  TYPE_1__ MpegMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  PADDING_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(AVFormatContext *ctx, AVIOContext *pb,
                               int packet_bytes)
{
    MpegMuxContext *s = ctx->priv_data;
    int i;

    FUNC2(pb, PADDING_STREAM);
    FUNC1(pb, packet_bytes - 6);
    if (!s->is_mpeg2) {
        FUNC0(pb, 0x0f);
        packet_bytes -= 7;
    } else
        packet_bytes -= 6;

    for (i = 0; i < packet_bytes; i++)
        FUNC0(pb, 0xff);
}