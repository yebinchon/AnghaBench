#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(AVIOContext *pb, MOVTrack *mov)
{
    FUNC0(pb, 0x34); /* size ... reports as 28 in mp4box! */
    FUNC1(pb, "uuid");
    FUNC1(pb, "USMT");
    FUNC0(pb, 0x21d24fce);
    FUNC0(pb, 0xbb88695c);
    FUNC0(pb, 0xfac9c740);
    FUNC0(pb, 0x1c);     // another size here!
    FUNC1(pb, "MTDT");
    FUNC0(pb, 0x00010012);
    FUNC0(pb, 0x0a);
    FUNC0(pb, 0x55c40000);
    FUNC0(pb, 0x1);
    FUNC0(pb, 0x0);
    return 0x34;
}