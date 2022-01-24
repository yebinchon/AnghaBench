#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vector_upl_t ;
typedef  TYPE_3__* upl_t ;
typedef  int /*<<< orphan*/  upl_size_t ;
typedef  int /*<<< orphan*/  upl_offset_t ;
typedef  size_t uint32_t ;
struct TYPE_9__ {TYPE_2__* vector_upl; } ;
struct TYPE_8__ {size_t num_upls; TYPE_1__* upl_iostates; TYPE_3__** upl_elems; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 

void
FUNC2(upl_t upl, upl_t subupl, upl_offset_t *offset, upl_size_t *size)
{
	if(FUNC1(upl)) {
		uint32_t i = 0;
		vector_upl_t vector_upl = upl->vector_upl;

		if(vector_upl) {
			for(i = 0; i < vector_upl->num_upls; i++) {
				if(vector_upl->upl_elems[i] == subupl)
					break;
			}

			if(i == vector_upl->num_upls)
				FUNC0("getting sub-upl iostate when none exists");

			*offset = vector_upl->upl_iostates[i].offset;
			*size = vector_upl->upl_iostates[i].size;
		}
		else
			FUNC0("vector_upl_get_iostate was passed a non-vectored UPL\n");
	}
	else
		FUNC0("vector_upl_get_iostate was passed a NULL UPL\n");
}