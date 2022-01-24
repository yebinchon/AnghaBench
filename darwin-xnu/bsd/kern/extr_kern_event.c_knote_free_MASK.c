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
struct knote {scalar_t__ kn_inuse; int kn_status; } ;

/* Variables and functions */
 int KN_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  knote_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct knote*) ; 

__attribute__((used)) static void
FUNC2(struct knote *kn)
{
	FUNC0(kn->kn_inuse == 0);
	FUNC0((kn->kn_status & KN_LOCKED) == 0);
	FUNC1(knote_zone, kn);
}