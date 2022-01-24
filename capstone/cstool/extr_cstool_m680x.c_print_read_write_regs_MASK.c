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
typedef  int /*<<< orphan*/  csh ;
struct TYPE_3__ {int regs_read_count; int regs_write_count; int /*<<< orphan*/ * regs_write; int /*<<< orphan*/ * regs_read; } ;
typedef  TYPE_1__ cs_detail ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(csh handle, cs_detail *detail)
{
	int i;

	if (detail->regs_read_count > 0) {
		FUNC1("\treading from regs: ");

		for (i = 0; i < detail->regs_read_count; ++i) {
			if (i > 0)
				FUNC1(", ");

			FUNC1("%s", FUNC0(handle, detail->regs_read[i]));
		}

		FUNC1("\n");
	}

	if (detail->regs_write_count > 0) {
		FUNC1("\twriting to regs: ");

		for (i = 0; i < detail->regs_write_count; ++i) {
			if (i > 0)
				FUNC1(", ");

			FUNC1("%s", FUNC0(handle,
					detail->regs_write[i]));
		}

		FUNC1("\n");
	}
}