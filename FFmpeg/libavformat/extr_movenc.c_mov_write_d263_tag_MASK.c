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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC3(AVIOContext *pb)
{
    FUNC1(pb, 0xf); /* size */
    FUNC2(pb, "d263");
    FUNC2(pb, "FFMP");
    FUNC0(pb, 0); /* decoder version */
    /* FIXME use AVCodecContext level/profile, when encoder will set values */
    FUNC0(pb, 0xa); /* level */
    FUNC0(pb, 0); /* profile */
    return 0xf;
}