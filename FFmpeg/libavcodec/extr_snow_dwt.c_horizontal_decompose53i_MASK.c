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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(DWTELEM *b, DWTELEM *temp, int width)
{
    const int width2 = width >> 1;
    int x;
    const int w2 = (width + 1) >> 1;

    for (x = 0; x < width2; x++) {
        temp[x]      = b[2 * x];
        temp[x + w2] = b[2 * x + 1];
    }
    if (width & 1)
        temp[x] = b[2 * x];
    FUNC0(b + w2, temp + w2, temp,   1, 1, 1, width, -1, 0, 1, 1, 0);
    FUNC0(b,      temp,      b + w2, 1, 1, 1, width,  1, 2, 2, 0, 0);
}