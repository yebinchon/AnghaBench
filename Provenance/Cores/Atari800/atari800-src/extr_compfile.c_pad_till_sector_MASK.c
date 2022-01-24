#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zero_buf ;
typedef  int /*<<< orphan*/  UBYTE ;
struct TYPE_4__ {int current_sector; } ;
typedef  TYPE_1__ ATR_Info ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(ATR_Info *pai, int till_sector)
{
	UBYTE zero_buf[256];
	FUNC0(zero_buf, 0, sizeof(zero_buf));
	while (pai->current_sector < till_sector)
		if (!FUNC1(pai, zero_buf))
			return FALSE;
	return TRUE;
}