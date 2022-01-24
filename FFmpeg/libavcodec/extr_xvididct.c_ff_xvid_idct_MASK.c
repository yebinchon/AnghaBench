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
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  RND0 ; 
 int /*<<< orphan*/  RND1 ; 
 int /*<<< orphan*/  RND2 ; 
 int /*<<< orphan*/  RND3 ; 
 int /*<<< orphan*/  RND4 ; 
 int /*<<< orphan*/  RND5 ; 
 int /*<<< orphan*/  RND6 ; 
 int /*<<< orphan*/  RND7 ; 
 int /*<<< orphan*/  TAB04 ; 
 int /*<<< orphan*/  TAB17 ; 
 int /*<<< orphan*/  TAB26 ; 
 int /*<<< orphan*/  TAB35 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(int16_t *const in)
{
    int i, rows = 0x07;

    FUNC3(in + 0 * 8, TAB04, RND0);
    FUNC3(in + 1 * 8, TAB17, RND1);
    FUNC3(in + 2 * 8, TAB26, RND2);
    if (FUNC3(in + 3 * 8, TAB35, RND3))
        rows |= 0x08;
    if (FUNC3(in + 4 * 8, TAB04, RND4))
        rows |= 0x10;
    if (FUNC3(in + 5 * 8, TAB35, RND5))
        rows |= 0x20;
    if (FUNC3(in + 6 * 8, TAB26, RND6))
        rows |= 0x40;
    if (FUNC3(in + 7 * 8, TAB17, RND7))
        rows |= 0x80;

    if (rows & 0xF0) {
        for (i = 0; i < 8; i++)
            FUNC2(in + i);
    } else if (rows & 0x08) {
        for (i = 0; i < 8; i++)
            FUNC1(in + i);
    } else {
        for (i = 0; i < 8; i++)
            FUNC0(in + i);
    }
}