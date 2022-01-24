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
 scalar_t__ Atari800_MACHINE_800 ; 
 scalar_t__ Atari800_machine_type ; 
 int MEMORY_mosaic_num_banks ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int mosaic_current_num_banks ; 
 int /*<<< orphan*/ * mosaic_ram ; 

__attribute__((used)) static void FUNC3(void){
	if (MEMORY_mosaic_num_banks > 0 && Atari800_machine_type == Atari800_MACHINE_800) {
		int size = MEMORY_mosaic_num_banks * 0x1000;
		if (mosaic_ram == NULL || mosaic_current_num_banks != MEMORY_mosaic_num_banks) {
			mosaic_current_num_banks = MEMORY_mosaic_num_banks;
			mosaic_ram = (UBYTE *)FUNC0(mosaic_ram, size);
		}
		FUNC2(mosaic_ram, 0, size);
	} else {
		if (mosaic_ram != NULL) {
			FUNC1(mosaic_ram);
			mosaic_ram = NULL;
			mosaic_current_num_banks = 0;
		}
	}
}