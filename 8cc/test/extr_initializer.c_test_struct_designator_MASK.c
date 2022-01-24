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
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1() {
    struct { int x; int y; } v1 = { .y = 1, .x = 5 };
    FUNC0(5, v1.x);
    FUNC0(1, v1.y);

    struct { int x; int y; } v2 = { .y = 7 };
    FUNC0(7, v2.y);

    struct { int x; int y; int z; } v3 = { .y = 12, 17 };
    FUNC0(12, v3.y);
    FUNC0(17, v3.z);
}