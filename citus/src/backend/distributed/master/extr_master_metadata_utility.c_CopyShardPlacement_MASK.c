#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ nodeName; } ;
typedef  TYPE_1__ ShardPlacement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

void
FUNC2(ShardPlacement *srcPlacement, ShardPlacement *destPlacement)
{
	/* first copy all by-value fields */
	FUNC0(destPlacement, srcPlacement, sizeof(ShardPlacement));

	/* and then the fields pointing to external values */
	if (srcPlacement->nodeName)
	{
		destPlacement->nodeName = FUNC1(srcPlacement->nodeName);
	}
}