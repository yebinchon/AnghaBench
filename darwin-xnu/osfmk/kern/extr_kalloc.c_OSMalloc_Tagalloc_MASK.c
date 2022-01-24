#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  queue_entry_t ;
struct TYPE_3__ {int OSMT_refcnt; int /*<<< orphan*/  OSMT_state; int /*<<< orphan*/  OSMT_name; int /*<<< orphan*/  OSMT_attr; } ;
typedef  TYPE_1__* OSMallocTag ;

/* Variables and functions */
 int /*<<< orphan*/  OSMT_ATTR_PAGEABLE ; 
 int /*<<< orphan*/  OSMT_MAX_NAME ; 
 int OSMT_PAGEABLE ; 
 int /*<<< orphan*/  OSMT_VALID ; 
 int /*<<< orphan*/  OSMalloc_tag_list ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

OSMallocTag
FUNC6(
	const char			*str,
	uint32_t			flags)
{
	OSMallocTag       OSMTag;

	OSMTag = (OSMallocTag)FUNC4(sizeof(*OSMTag));

	FUNC2((void *)OSMTag, sizeof(*OSMTag));

	if (flags & OSMT_PAGEABLE)
		OSMTag->OSMT_attr = OSMT_ATTR_PAGEABLE;

	OSMTag->OSMT_refcnt = 1;

	FUNC5(OSMTag->OSMT_name, str, OSMT_MAX_NAME);

	FUNC0();
	FUNC3(&OSMalloc_tag_list, (queue_entry_t)OSMTag);
	FUNC1();
	OSMTag->OSMT_state = OSMT_VALID;
	return(OSMTag);
}