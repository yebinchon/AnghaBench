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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_PI_PEFINISH ; 
 int /*<<< orphan*/  IRQ_PI_PETOKEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __GXFinishInterruptHandler ; 
 int /*<<< orphan*/  __GXTokenInterruptHandler ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int* _peReg ; 

__attribute__((used)) static void FUNC3()
{
	FUNC1(IRQ_PI_PETOKEN,__GXTokenInterruptHandler,NULL);
	FUNC2(FUNC0(IRQ_PI_PETOKEN));

	FUNC1(IRQ_PI_PEFINISH,__GXFinishInterruptHandler,NULL);
	FUNC2(FUNC0(IRQ_PI_PEFINISH));

	_peReg[5] = 0x0F;
}