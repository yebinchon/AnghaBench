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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(uint8_t* plane, int width, int height, int stride,
                           GetBitContext *gb)
{
    int x, y;

    for (y = 0; y < height; y++) {
        if (!FUNC0(gb)) //rowskip
            FUNC1(plane, 0, width);
        else
            for (x = 0; x < width; x++)
                plane[x] = FUNC0(gb);
        plane += stride;
    }
}