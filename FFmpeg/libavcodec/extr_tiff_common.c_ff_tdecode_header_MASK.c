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
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(GetByteContext *gb, int *le, int *ifd_offset)
{
    if (FUNC1(gb) < 8) {
        return AVERROR_INVALIDDATA;
    }

    *le = FUNC2(gb);
    if (*le == FUNC0("II")) {
        *le = 1;
    } else if (*le == FUNC0("MM")) {
        *le = 0;
    } else {
        return AVERROR_INVALIDDATA;
    }

    if (FUNC4(gb, *le) != 42) {
        return AVERROR_INVALIDDATA;
    }

    *ifd_offset = FUNC3(gb, *le);

    return 0;
}