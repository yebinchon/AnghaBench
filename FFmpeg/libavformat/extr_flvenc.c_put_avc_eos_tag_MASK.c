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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FLV_TAG_TYPE_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC4(AVIOContext *pb, unsigned ts)
{
    FUNC0(pb, FLV_TAG_TYPE_VIDEO);
    FUNC1(pb, 5);               /* Tag Data Size */
    FUNC3(pb, ts);
    FUNC1(pb, 0);               /* StreamId = 0 */
    FUNC0(pb, 23);                /* ub[4] FrameType = 1, ub[4] CodecId = 7 */
    FUNC0(pb, 2);                 /* AVC end of sequence */
    FUNC1(pb, 0);               /* Always 0 for AVC EOS. */
    FUNC2(pb, 16);              /* Size of FLV tag */
}