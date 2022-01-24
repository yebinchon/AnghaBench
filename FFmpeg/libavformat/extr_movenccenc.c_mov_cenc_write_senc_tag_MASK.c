#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_3__ {int auxiliary_info_entries; int /*<<< orphan*/  auxiliary_info_size; int /*<<< orphan*/  auxiliary_info; scalar_t__ use_subsamples; } ;
typedef  TYPE_1__ MOVMuxCencContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(MOVMuxCencContext* ctx, AVIOContext *pb,
                                   int64_t* auxiliary_info_offset)
{
    int64_t pos = FUNC0(pb);

    FUNC1(pb, 0); /* size */
    FUNC3(pb, "senc");
    FUNC1(pb, ctx->use_subsamples ? 0x02 : 0); /* version & flags */
    FUNC1(pb, ctx->auxiliary_info_entries); /* entry count */
    *auxiliary_info_offset = FUNC0(pb);
    FUNC2(pb, ctx->auxiliary_info, ctx->auxiliary_info_size);
    return FUNC4(pb, pos);
}