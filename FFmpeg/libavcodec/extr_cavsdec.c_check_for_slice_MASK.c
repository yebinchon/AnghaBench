#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mb_height; int /*<<< orphan*/  stc; scalar_t__ mbx; int /*<<< orphan*/  gb; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVSContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC6(AVSContext *h)
{
    GetBitContext *gb = &h->gb;
    int align;

    if (h->mbx)
        return 0;
    align = (-FUNC2(gb)) & 7;
    /* check for stuffing byte */
    if (!align && (FUNC3(gb, 8) == 0x80))
        align = 8;
    if ((FUNC4(gb, 24 + align) & 0xFFFFFF) == 0x000001) {
        FUNC5(gb, 24 + align);
        h->stc = FUNC1(gb, 8);
        if (h->stc >= h->mb_height)
            return 0;
        FUNC0(h, gb);
        return 1;
    }
    return 0;
}