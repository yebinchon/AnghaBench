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
struct TYPE_3__ {int present; void* min_luminance; void* max_luminance; void** white_point; void*** display_primaries; } ;
typedef  TYPE_1__ HEVCSEIMasteringDisplay ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(HEVCSEIMasteringDisplay *s, GetBitContext *gb)
{
    int i;
    // Mastering primaries
    for (i = 0; i < 3; i++) {
        s->display_primaries[i][0] = FUNC0(gb, 16);
        s->display_primaries[i][1] = FUNC0(gb, 16);
    }
    // White point (x, y)
    s->white_point[0] = FUNC0(gb, 16);
    s->white_point[1] = FUNC0(gb, 16);

    // Max and min luminance of mastering display
    s->max_luminance = FUNC1(gb, 32);
    s->min_luminance = FUNC1(gb, 32);

    // As this SEI message comes before the first frame that references it,
    // initialize the flag to 2 and decrement on IRAP access unit so it
    // persists for the coded video sequence (e.g., between two IRAPs)
    s->present = 2;
    return 0;
}