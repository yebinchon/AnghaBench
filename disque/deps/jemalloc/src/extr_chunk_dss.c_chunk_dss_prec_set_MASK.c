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
typedef  scalar_t__ dss_prec_t ;

/* Variables and functions */
 int /*<<< orphan*/  dss_mtx ; 
 scalar_t__ dss_prec_default ; 
 scalar_t__ dss_prec_disabled ; 
 int /*<<< orphan*/  have_dss ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

bool
FUNC2(dss_prec_t dss_prec)
{

	if (!have_dss)
		return (dss_prec != dss_prec_disabled);
	FUNC0(&dss_mtx);
	dss_prec_default = dss_prec;
	FUNC1(&dss_mtx);
	return (false);
}