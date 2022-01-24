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
struct TYPE_3__ {scalar_t__ Magic; } ;
typedef  TYPE_1__ MEMTAG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 scalar_t__ MEMTAG_MAGIC ; 

void FUNC2(MEMTAG *tag)
{
	if (FUNC1() == false)
	{
		return;
	}

	// Validate arguments
	if (tag == NULL)
	{
		FUNC0("CheckMemTag: tag == NULL");
		return;
	}

	if (tag->Magic != MEMTAG_MAGIC)
	{
		FUNC0("CheckMemTag: tag->Magic != MEMTAG_MAGIC");
		return;
	}
}