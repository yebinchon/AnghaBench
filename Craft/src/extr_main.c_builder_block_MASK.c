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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int) ; 

void FUNC3(int x, int y, int z, int w) {
    if (y <= 0 || y >= 256) {
        return;
    }
    if (FUNC1(FUNC0(x, y, z))) {
        FUNC2(x, y, z, 0);
    }
    if (w) {
        FUNC2(x, y, z, w);
    }
}