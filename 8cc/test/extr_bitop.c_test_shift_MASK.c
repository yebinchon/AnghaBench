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
    FUNC0(16, 1 << 4);
    FUNC0(48, 3 << 4);

    FUNC0(1, 15 >> 3);
    FUNC0(2, 8 >> 2);

    FUNC0(1, ((unsigned)-1) >> 31);
}