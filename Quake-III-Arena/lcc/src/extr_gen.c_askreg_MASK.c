#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* regnode; TYPE_3__** wildcard; } ;
struct TYPE_10__ {TYPE_2__ x; } ;
struct TYPE_8__ {unsigned int mask; size_t set; } ;
typedef  TYPE_3__* Symbol ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*) ; 

__attribute__((used)) static Symbol FUNC1(Symbol rs, unsigned rmask[]) {
	int i;

	if (rs->x.wildcard == NULL)
		return FUNC0(rs);
	for (i = 31; i >= 0; i--) {
		Symbol r = rs->x.wildcard[i];
		if (r != NULL
		&& !(r->x.regnode->mask&~rmask[r->x.regnode->set])
		&& FUNC0(r))
			return r;
	}
	return NULL;
}