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
struct knote {int /*<<< orphan*/  kn_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  KN_STAYACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct knote*) ; 
 int /*<<< orphan*/  FUNC1 (struct knote*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4(struct knote *kn)
{
	FUNC2(FUNC1(kn));
	kn->kn_status &= ~KN_STAYACTIVE;
	FUNC0(kn);
	FUNC3(FUNC1(kn));
}