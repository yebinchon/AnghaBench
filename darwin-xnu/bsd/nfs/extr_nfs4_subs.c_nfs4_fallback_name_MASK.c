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
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC1(const char *id, int have_at)
{
	if (have_at) {
		/* must be user@domain */
		/* try to identify some well-known IDs */
		if (!FUNC0(id, "root@", 5))
			return (0);
		else if (!FUNC0(id, "wheel@", 6))
			return (0);
		else if (!FUNC0(id, "nobody@", 7))
			return (-2);
		else if (!FUNC0(id, "nfsnobody@", 10))
			return (-2);
	}
	return (-2);
}