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
struct label {int /*<<< orphan*/  l_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_FLAG_INITIALIZED ; 
 int MAC_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct label*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zone_label ; 

struct label *
FUNC3(int flags)
{
	struct label *l;

	if (flags & MAC_NOWAIT) 
		l = (struct label *) FUNC2(zone_label);
	else
		l = (struct label *) FUNC1(zone_label);
	if (l == NULL)
		return (NULL);

	FUNC0(l, sizeof(struct label));
	l->l_flags = MAC_FLAG_INITIALIZED;
	return (l);
}