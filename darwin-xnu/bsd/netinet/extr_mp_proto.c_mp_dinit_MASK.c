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
struct domain {int dom_flags; } ;

/* Variables and functions */
 int DOM_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  mpsw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct domain*,int) ; 

void
FUNC2(struct domain *dp)
{
	FUNC0(!(dp->dom_flags & DOM_INITIALIZED));

	FUNC1(&mpsw, dp, 1);
}