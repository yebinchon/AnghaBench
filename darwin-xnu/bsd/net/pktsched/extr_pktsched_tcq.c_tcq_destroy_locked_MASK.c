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
struct tcq_if {int /*<<< orphan*/  tif_ifq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (struct tcq_if*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pktsched_verbose ; 
 int /*<<< orphan*/  FUNC4 (struct tcq_if*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcq_if*) ; 
 int /*<<< orphan*/  tcq_zone ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct tcq_if*) ; 

__attribute__((used)) static int
FUNC7(struct tcq_if *tif)
{
	FUNC0(tif->tif_ifq);

	(void) FUNC4(tif);

	if (pktsched_verbose) {
		FUNC3(LOG_DEBUG, "%s: %s scheduler destroyed\n",
		    FUNC2(FUNC1(tif)), FUNC5(tif));
	}

	FUNC6(tcq_zone, tif);

	return (0);
}