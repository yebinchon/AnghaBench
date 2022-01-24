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
struct TYPE_9__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {int fsize; int chars_per_frame; } ;
typedef  TYPE_1__ BinDemuxContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s,
                           AVPacket *pkt)
{
    BinDemuxContext *bin = s->priv_data;

    if (bin->fsize > 0) {
        if (FUNC1(s->pb, pkt, bin->fsize) < 0)
            return FUNC0(EIO);
        bin->fsize = -1; /* done */
    } else if (!bin->fsize) {
        if (FUNC2(s->pb))
            return FUNC0(EIO);
        if (FUNC1(s->pb, pkt, bin->chars_per_frame) < 0)
            return FUNC0(EIO);
    } else {
        return FUNC0(EIO);
    }

    pkt->flags |= AV_PKT_FLAG_KEY;
    return 0;
}