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
 int /*<<< orphan*/  FUNC1 (struct domain*) ; 
 int /*<<< orphan*/  FUNC2 (struct domain*) ; 
 struct domain* systemdomain ; 

__attribute__((used)) static void
FUNC3(struct domain *dp)
{
	FUNC0(!(dp->dom_flags & DOM_INITIALIZED));
	FUNC0(systemdomain == NULL);

	systemdomain = dp;

	/* add system domain built in protocol initializers here */
	FUNC2(dp);
	FUNC1(dp);
}