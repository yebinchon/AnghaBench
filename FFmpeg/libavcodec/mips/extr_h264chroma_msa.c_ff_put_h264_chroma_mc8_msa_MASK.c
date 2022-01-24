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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC5(uint8_t *dst, uint8_t *src,
                                ptrdiff_t stride, int height, int x, int y)
{
    FUNC0(x < 8 && y < 8 && x >= 0 && y >= 0);

    if (x && y) {
        FUNC1(src, dst, stride, x, (8 - x), y, (8 - y), height);
    } else if (x) {
        FUNC2(src, dst, stride, x, (8 - x), height);
    } else if (y) {
        FUNC3(src, dst, stride, y, (8 - y), height);
    } else {
        FUNC4(src, dst, stride, height);
    }
}