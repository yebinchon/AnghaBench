#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TupleDesc ;
struct TYPE_7__ {char attidentity; } ;
struct TYPE_6__ {int natts; } ;
typedef  TYPE_2__* Form_pg_attribute ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int) ; 

__attribute__((used)) static bool
FUNC1(TupleDesc relationDesc)
{
	int attributeIndex = 0;

	for (attributeIndex = 0; attributeIndex < relationDesc->natts; attributeIndex++)
	{
		Form_pg_attribute attributeForm = FUNC0(relationDesc, attributeIndex);

		if (attributeForm->attidentity != '\0')
		{
			return true;
		}
	}

	return false;
}