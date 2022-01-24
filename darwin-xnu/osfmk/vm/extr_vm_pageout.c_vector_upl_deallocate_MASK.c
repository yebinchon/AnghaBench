#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vector_upl_t ;
typedef  TYPE_2__* upl_t ;
struct upl_page_info {int dummy; } ;
struct _vector_upl {int dummy; } ;
struct TYPE_6__ {TYPE_1__* vector_upl; } ;
struct TYPE_5__ {scalar_t__ invalid_upls; scalar_t__ num_upls; int size; scalar_t__ offset; struct TYPE_5__* pagelist; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(upl_t upl)
{
	if(upl) {
		vector_upl_t vector_upl = upl->vector_upl;
		if(vector_upl) {
			if(vector_upl->invalid_upls != vector_upl->num_upls)
				FUNC1("Deallocating non-empty Vectored UPL\n");
			FUNC0(vector_upl->pagelist,(sizeof(struct upl_page_info)*(vector_upl->size/PAGE_SIZE)));
			vector_upl->invalid_upls=0;
			vector_upl->num_upls = 0;
			vector_upl->pagelist = NULL;
			vector_upl->size = 0;
			vector_upl->offset = 0;
			FUNC0(vector_upl, sizeof(struct _vector_upl));
			vector_upl = (vector_upl_t)0xfeedfeed;
		}
		else
			FUNC1("vector_upl_deallocate was passed a non-vectored upl\n");
	}
	else
		FUNC1("vector_upl_deallocate was passed a NULL upl\n");
}