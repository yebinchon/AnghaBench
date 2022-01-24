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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC2(AVIOContext *pb)
{
    FUNC0(pb, 28);
    FUNC1(pb, "uuid");
    FUNC0(pb, 0x6b6840f2);
    FUNC0(pb, 0x5f244fc5);
    FUNC0(pb, 0xba39a51b);
    FUNC0(pb, 0xcf0323f3);
    FUNC0(pb, 0x0);
    return 28;
}