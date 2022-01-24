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
typedef  int /*<<< orphan*/  DWTELEM ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(DWTELEM *buffer, DWTELEM *temp,
                                 int width, int height, int stride)
{
    int y;
    DWTELEM *b0 = buffer + FUNC0(-2 - 1, height - 1) * stride;
    DWTELEM *b1 = buffer + FUNC0(-2,     height - 1) * stride;

    for (y = -2; y < height; y += 2) {
        DWTELEM *b2 = buffer + FUNC0(y + 1, height - 1) * stride;
        DWTELEM *b3 = buffer + FUNC0(y + 2, height - 1) * stride;

        if (y + 1 < (unsigned)height)
            FUNC1(b2, temp, width);
        if (y + 2 < (unsigned)height)
            FUNC1(b3, temp, width);

        if (y + 1 < (unsigned)height)
            FUNC2(b1, b2, b3, width);
        if (y + 0 < (unsigned)height)
            FUNC3(b0, b1, b2, width);

        b0 = b2;
        b1 = b3;
    }
}