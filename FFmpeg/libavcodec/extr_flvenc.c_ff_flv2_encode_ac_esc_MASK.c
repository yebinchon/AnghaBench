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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

void FUNC2(PutBitContext *pb, int slevel, int level,
                           int run, int last)
{
    if (level < 64) { // 7-bit level
        FUNC0(pb, 1, 0);
        FUNC0(pb, 1, last);
        FUNC0(pb, 6, run);

        FUNC1(pb, 7, slevel);
    } else {
        /* 11-bit level */
        FUNC0(pb, 1, 1);
        FUNC0(pb, 1, last);
        FUNC0(pb, 6, run);

        FUNC1(pb, 11, slevel);
    }
}