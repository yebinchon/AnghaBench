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
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC1(PutBitContext *pb, int run)
{
    if (run) {
        FUNC0(pb, 1, 0);
        if (run < 0x10)
            FUNC0(pb, 4, run);
        else
            FUNC0(pb, 15, run);
    } else {
        FUNC0(pb, 1, 1);
    }
}