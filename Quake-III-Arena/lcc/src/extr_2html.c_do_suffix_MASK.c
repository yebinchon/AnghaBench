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
 int /*<<< orphan*/  FUNC0 (char*,char) ; 

__attribute__((used)) static void FUNC1(int x) {
	static char suffixes[] = "0F234IUPVB";

	if (x < 0 || x >= (sizeof suffixes/sizeof suffixes[0]) - 1)
		FUNC0("%d", x);
	else
		FUNC0("%c", suffixes[x]);
}