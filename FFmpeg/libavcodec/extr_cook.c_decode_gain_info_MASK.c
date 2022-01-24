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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(GetBitContext *gb, int *gaininfo)
{
    int i, n;

    n = FUNC3(gb, 0, FUNC2(gb));     // amount of elements*2 to update

    i = 0;
    while (n--) {
        int index = FUNC0(gb, 3);
        int gain = FUNC1(gb) ? FUNC0(gb, 4) - 7 : -1;

        while (i <= index)
            gaininfo[i++] = gain;
    }
    while (i <= 8)
        gaininfo[i++] = 0;
}