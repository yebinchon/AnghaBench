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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int regs_read_count; int regs_write_count; int /*<<< orphan*/ * regs_write; int /*<<< orphan*/ * regs_read; } ;
typedef  TYPE_1__ cs_detail ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static void FUNC2(cs_detail* detail)
{
	int i;

	for (i = 0; i < detail->regs_read_count; ++i)
	{
		uint16_t reg_id = detail->regs_read[i];
		const char* reg_name = FUNC0(handle, reg_id);
		FUNC1("\treading from reg: %s\n", reg_name);
	}

	for (i = 0; i < detail->regs_write_count; ++i)
	{
		uint16_t reg_id = detail->regs_write[i];
		const char* reg_name = FUNC0(handle, reg_id);
		FUNC1("\twriting to reg:   %s\n", reg_name);
	}
}