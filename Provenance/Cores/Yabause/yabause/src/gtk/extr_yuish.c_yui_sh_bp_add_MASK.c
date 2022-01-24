#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  PC; } ;
typedef  TYPE_1__ sh2regs_struct ;
typedef  TYPE_2__* gpointer ;
typedef  scalar_t__ gchar ;
struct TYPE_9__ {int /*<<< orphan*/  debugsh; } ;
typedef  TYPE_2__ YuiSh ;
typedef  int /*<<< orphan*/  GtkEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ const*,char*,unsigned int*) ; 

__attribute__((used)) static void FUNC7(GtkEntry * entry, gpointer user_data) {
	YuiSh * sh2 = user_data;
	const gchar * address_s;
	unsigned int address;

	address_s = FUNC4(entry);

	if (*address_s == 0) return;

	FUNC6(address_s, "%8X", &address);

	FUNC0(sh2->debugsh, address);

	FUNC5(entry, "");

	{
		sh2regs_struct sh2regs;
		FUNC1(sh2->debugsh, &sh2regs);
		FUNC3(sh2,sh2regs.PC);
		FUNC2(sh2);
	}
}