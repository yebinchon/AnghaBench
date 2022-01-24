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
struct pfr_kentry {scalar_t__ pfrke_intrpool; } ;

/* Variables and functions */
 int /*<<< orphan*/  pfr_kentry_pl ; 
 int /*<<< orphan*/  pfr_kentry_pl2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pfr_kentry*) ; 

__attribute__((used)) static void
FUNC1(struct pfr_kentry *ke)
{
	if (ke->pfrke_intrpool)
		FUNC0(&pfr_kentry_pl2, ke);
	else
		FUNC0(&pfr_kentry_pl, ke);
}