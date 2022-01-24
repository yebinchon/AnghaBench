#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ CARTRIDGE_image_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ Atari800_MACHINE_5200 ; 
 scalar_t__ Atari800_MACHINE_XLXE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ Atari800_machine_type ; 
 TYPE_1__ CARTRIDGE_main ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MEMORY_ram_size ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* active_cart ; 

__attribute__((used)) static void FUNC6(CARTRIDGE_image_t *cart)
{
	FUNC4(cart);
	FUNC5(cart);
	if (cart == &CARTRIDGE_main) {
		/* Check if we should automatically switch between computer/5200. */
		int for5200 = FUNC2(CARTRIDGE_main.type);
		if (for5200 && Atari800_machine_type != Atari800_MACHINE_5200) {
			FUNC1(Atari800_MACHINE_5200);
			MEMORY_ram_size = 16;
			FUNC0();
		}
		else if (!for5200 && Atari800_machine_type == Atari800_MACHINE_5200) {
			FUNC1(Atari800_MACHINE_XLXE);
			MEMORY_ram_size = 64;
			FUNC0();
		}
	}
	if (cart == active_cart)
		FUNC3();
}