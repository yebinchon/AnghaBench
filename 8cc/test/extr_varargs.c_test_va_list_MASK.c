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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2() {
    FUNC0("", FUNC1(""));
    FUNC0("3", FUNC1("%d", 3));
    FUNC0("3,1.0,6,2.0,abc", FUNC1("%d,%.1f,%d,%.1f,%s", 3, 1.0, 6, 2.0, "abc"));
}