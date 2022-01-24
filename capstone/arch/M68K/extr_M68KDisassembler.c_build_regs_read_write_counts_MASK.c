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
struct TYPE_5__ {int op_count; int /*<<< orphan*/ * operands; } ;
struct TYPE_6__ {TYPE_1__ extension; } ;
typedef  TYPE_2__ m68k_info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(m68k_info *info)
{
	int i;

	if (!info->extension.op_count)
		return;

	if (info->extension.op_count == 1) {
		FUNC0(info, &info->extension.operands[0], 1);
	} else {
		// first operand is always read
		FUNC0(info, &info->extension.operands[0], 0);

		// remaning write
		for (i = 1; i < info->extension.op_count; ++i)
			FUNC0(info, &info->extension.operands[i], 1);
	}
}