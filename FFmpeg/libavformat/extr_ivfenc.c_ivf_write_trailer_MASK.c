#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* priv_data; TYPE_2__* pb; } ;
struct TYPE_9__ {int seekable; } ;
struct TYPE_8__ {int frame_cnt; int sum_delta_pts; } ;
typedef  TYPE_1__ IVFEncContext ;
typedef  TYPE_2__ AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    IVFEncContext *ctx = s->priv_data;

    if ((pb->seekable & AVIO_SEEKABLE_NORMAL) && ctx->frame_cnt > 1) {
        size_t end = FUNC1(pb);

        FUNC0(pb, 24, SEEK_SET);
        // overwrite the "length" field (duration)
        FUNC2(pb, ctx->frame_cnt * ctx->sum_delta_pts / (ctx->frame_cnt - 1));
        FUNC2(pb, 0); // zero out unused bytes
        FUNC0(pb, end, SEEK_SET);
    }

    return 0;
}