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
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 

__attribute__((used)) static void FUNC1() {
    FUNC0(0, 0);
    FUNC0(3, 1 + 2);
    FUNC0(3, 1 + 2);
    FUNC0(10, 1 + 2 + 3 + 4);
    FUNC0(11, 1 + 2 * 3 + 4);
    FUNC0(14, 1 * 2 + 3 * 4);
    FUNC0(4, 4 / 2 + 6 / 3);
    FUNC0(4, 24 / 2 / 3);
    FUNC0(3, 24 % 7);
    FUNC0(0, 24 % 3);
    FUNC0(98, 'a' + 1);
    int a = 0 - 1;
    FUNC0(0 - 1, a);
    FUNC0(-1, a);
    FUNC0(0, a + 1);
    FUNC0(1, +1);
    FUNC0(1, (unsigned)4000000001 % 2);
}