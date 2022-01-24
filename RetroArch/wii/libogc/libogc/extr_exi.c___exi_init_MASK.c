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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  IM_EXI ; 
 int /*<<< orphan*/  IRQ_EXI0_EXI ; 
 int /*<<< orphan*/  IRQ_EXI0_EXT ; 
 int /*<<< orphan*/  IRQ_EXI0_TC ; 
 int /*<<< orphan*/  IRQ_EXI1_EXI ; 
 int /*<<< orphan*/  IRQ_EXI1_EXT ; 
 int /*<<< orphan*/  IRQ_EXI1_TC ; 
 int /*<<< orphan*/  IRQ_EXI2_EXI ; 
 int /*<<< orphan*/  IRQ_EXI2_TC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __exi_irq_handler ; 
 int /*<<< orphan*/  __ext_irq_handler ; 
 int /*<<< orphan*/  __tc_irq_handler ; 
 int* _exiReg ; 
 int /*<<< orphan*/  eximap ; 

void FUNC4()
{
	FUNC2(IM_EXI);

	_exiReg[0] = 0;
	_exiReg[5] = 0;
	_exiReg[10] = 0;

	_exiReg[0] = 0x2000;

	FUNC3(eximap);

	FUNC1(IRQ_EXI0_EXI,__exi_irq_handler,NULL);
	FUNC1(IRQ_EXI0_TC,__tc_irq_handler,NULL);
	FUNC1(IRQ_EXI0_EXT,__ext_irq_handler,NULL);
	FUNC1(IRQ_EXI1_EXI,__exi_irq_handler,NULL);
	FUNC1(IRQ_EXI1_TC,__tc_irq_handler,NULL);
	FUNC1(IRQ_EXI1_EXT,__ext_irq_handler,NULL);
	FUNC1(IRQ_EXI2_EXI,__exi_irq_handler,NULL);
	FUNC1(IRQ_EXI2_TC,__tc_irq_handler,NULL);

	FUNC0();
}