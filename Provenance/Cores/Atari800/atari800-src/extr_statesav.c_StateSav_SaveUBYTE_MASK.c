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
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  StateFile ; 
 scalar_t__ Z_OK ; 
 scalar_t__ nFileError ; 

void FUNC2(const UBYTE *data, int num)
{
	if (!StateFile || nFileError != Z_OK)
		return;

	/* Assumption is that UBYTE = 8bits and the pointer passed in refers
	   directly to the active bits if in a padded location. If not (unlikely)
	   you'll have to redefine this to save appropriately for cross-platform
	   compatibility */
	if (FUNC0(StateFile, data, num) == 0)
		FUNC1();
}