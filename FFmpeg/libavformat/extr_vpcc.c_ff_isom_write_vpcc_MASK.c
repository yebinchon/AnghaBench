#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int profile; int level; int bitdepth; int chroma_subsampling; int full_range_flag; } ;
typedef  TYPE_1__ VPCC ;
struct TYPE_7__ {int color_primaries; int color_trc; int color_space; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_2__ AVCodecParameters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC3(AVFormatContext *s, AVIOContext *pb,
                       AVCodecParameters *par)
{
    VPCC vpcc;
    int ret;

    ret = FUNC2(s, par, NULL, &vpcc);
    if (ret < 0)
        return ret;

    FUNC0(pb, vpcc.profile);
    FUNC0(pb, vpcc.level);
    FUNC0(pb, (vpcc.bitdepth << 4) | (vpcc.chroma_subsampling << 1) | vpcc.full_range_flag);
    FUNC0(pb, par->color_primaries);
    FUNC0(pb, par->color_trc);
    FUNC0(pb, par->color_space);

    // vp9 does not have codec initialization data.
    FUNC1(pb, 0);
    return 0;
}