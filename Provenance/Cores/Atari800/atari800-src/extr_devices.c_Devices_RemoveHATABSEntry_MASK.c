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
typedef  scalar_t__ UWORD ;

/* Variables and functions */
 char FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC4(char device, UWORD entry_address,
							  UWORD table_address)
{
	if (entry_address != 0 && FUNC0(entry_address) == device
		&& FUNC1(entry_address + 1) == table_address) {
		FUNC2(entry_address, 0);
		FUNC3(entry_address + 1, 0);
	}
}