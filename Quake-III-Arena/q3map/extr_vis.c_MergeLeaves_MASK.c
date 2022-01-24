#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  leaf; scalar_t__ hint; scalar_t__ removed; } ;
typedef  TYPE_1__ vportal_t ;
struct TYPE_5__ {scalar_t__ merged; int numportals; TYPE_1__** portals; } ;
typedef  TYPE_2__ leaf_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_2__* leafs ; 
 int portalclusters ; 

void FUNC3(void)
{
	int i, j, nummerges, totalnummerges;
	leaf_t *leaf;
	vportal_t *p;

	totalnummerges = 0;
	do
	{
		nummerges = 0;
		for (i = 0; i < portalclusters; i++)
		{
			leaf = &leafs[i];
			//if this leaf is merged already
			if (leaf->merged >= 0)
				continue;
			//
			for (j = 0; j < leaf->numportals; j++)
			{
				p = leaf->portals[j];
				//
				if (p->removed)
					continue;
				//never merge through hint portals
				if (p->hint)
					continue;
				if (FUNC0(i, p->leaf))
				{
					FUNC1();
					nummerges++;
					break;
				}
			}
		}
		totalnummerges += nummerges;
	} while (nummerges);
	FUNC2("%6d leaves merged\n", totalnummerges);
}