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
struct llinfo_nd6 {int /*<<< orphan*/  ln_lastused; int /*<<< orphan*/ * ln_llreach; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

void
FUNC1(struct llinfo_nd6 *ln)
{
	if (ln->ln_llreach != NULL)
		ln->ln_lastused = FUNC0();
}