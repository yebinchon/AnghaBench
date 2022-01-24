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
struct TYPE_3__ {int /*<<< orphan*/  frame_only_constraint_flag; int /*<<< orphan*/  non_packed_constraint_flag; int /*<<< orphan*/  interlaced_source_flag; int /*<<< orphan*/  progressive_source_flag; int /*<<< orphan*/ * profile_compatibility_flag; int /*<<< orphan*/  profile_idc; int /*<<< orphan*/  tier_flag; int /*<<< orphan*/  profile_space; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ PTLCommon ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(PutBitContext *pb, PTLCommon *ptl)
{
    int i;

    FUNC0(pb, 2, ptl->profile_space);
    FUNC0(pb, 1, ptl->tier_flag);
    FUNC0(pb, 5, ptl->profile_idc);
    for (i = 0; i < 32; i++)
        FUNC0(pb, 1, ptl->profile_compatibility_flag[i]);
    FUNC0(pb, 1, ptl->progressive_source_flag);
    FUNC0(pb, 1, ptl->interlaced_source_flag);
    FUNC0(pb, 1, ptl->non_packed_constraint_flag);
    FUNC0(pb, 1, ptl->frame_only_constraint_flag);
    FUNC1(pb, 0);   // reserved
    FUNC0(pb, 12, 0); // reserved
}