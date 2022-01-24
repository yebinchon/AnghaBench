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
struct TYPE_8__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_7__ {int /*<<< orphan*/  fifo; } ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef  TYPE_2__ StreamInfo ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *ctx)
{
    StreamInfo *stream;
    int i;

    for (;;) {
        int ret = FUNC2(ctx, 1);
        if (ret < 0)
            return ret;
        else if (ret == 0)
            break;
    }

    /* End header according to MPEG-1 systems standard. We do not write
     * it as it is usually not needed by decoders and because it
     * complicates MPEG stream concatenation. */
    // avio_wb32(ctx->pb, ISO_11172_END_CODE);
    // avio_flush(ctx->pb);

    for (i = 0; i < ctx->nb_streams; i++) {
        stream = ctx->streams[i]->priv_data;

        FUNC0(FUNC1(stream->fifo) == 0);
    }
    return 0;
}