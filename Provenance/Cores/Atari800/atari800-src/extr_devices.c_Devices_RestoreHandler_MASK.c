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
typedef  int UWORD ;
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 scalar_t__ Atari800_MACHINE_800 ; 
 scalar_t__ Atari800_machine_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int MEMORY_os ; 

__attribute__((used)) static void FUNC2(UWORD address, UBYTE esc_code)
{
	FUNC0(esc_code);
	/* restore original OS code */
	FUNC1(MEMORY_os - (Atari800_machine_type == Atari800_MACHINE_800
	                               ? 0xd800
	                               : 0xc000) + address,
	                  address, 3);
}