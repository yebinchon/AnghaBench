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
    FUNC0(51, (1 + 2) ? 51 : 52);
    FUNC0(52, (1 - 1) ? 51 : 52);
    FUNC0(26, (1 - 1) ? 51 : 52 / 2);
    FUNC0(17, (1 - 0) ? 51 / 3 : 52);
    // GNU extension
    FUNC0(52, 0 ?: 52);
    FUNC0(3, (1 + 2) ?: 52);
}