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
 int AVERROR_INVALIDDATA ; 
 int NEEDS_CHECKING ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVIOContext *pb, int size, double *num)
{
    if (size == 0)
        *num = 0;
    else if (size == 4)
        *num = FUNC1(FUNC2(pb));
    else if (size == 8)
        *num = FUNC0(FUNC3(pb));
    else
        return AVERROR_INVALIDDATA;

    return NEEDS_CHECKING;
}