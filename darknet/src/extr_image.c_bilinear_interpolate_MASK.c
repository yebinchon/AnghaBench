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
typedef  int /*<<< orphan*/  image ;

/* Variables and functions */
 scalar_t__ FUNC0 (float) ; 
 float FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static float FUNC2(image im, float x, float y, int c)
{
    int ix = (int) FUNC0(x);
    int iy = (int) FUNC0(y);

    float dx = x - ix;
    float dy = y - iy;

    float val = (1-dy) * (1-dx) * FUNC1(im, ix, iy, c) + 
        dy     * (1-dx) * FUNC1(im, ix, iy+1, c) + 
        (1-dy) *   dx   * FUNC1(im, ix+1, iy, c) +
        dy     *   dx   * FUNC1(im, ix+1, iy+1, c);
    return val;
}