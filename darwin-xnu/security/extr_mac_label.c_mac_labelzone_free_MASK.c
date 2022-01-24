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
struct label {int l_flags; } ;

/* Variables and functions */
 int MAC_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct label*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct label*) ; 
 int /*<<< orphan*/  zone_label ; 

void
FUNC3(struct label *l)
{

	if (l == NULL)
		FUNC1("Free of NULL MAC label\n");

	if ((l->l_flags & MAC_FLAG_INITIALIZED) == 0)
		FUNC1("Free of uninitialized label\n");
	FUNC0(l, sizeof(struct label));
	FUNC2(zone_label, l);
}