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
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYSTICK_INTR_ID ; 
 scalar_t__ pdFALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

BaseType_t FUNC5( void )
{
	BaseType_t ret;

	FUNC1();
	FUNC2(SYSTICK_INTR_ID);
	ret = FUNC4();
	if( ret != pdFALSE )
	{
		FUNC0();
	} else {
		FUNC3();
	}
	return ret;
}