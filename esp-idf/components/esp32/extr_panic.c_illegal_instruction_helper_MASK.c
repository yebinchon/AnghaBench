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
typedef  int uint32_t ;
struct TYPE_3__ {int pc; } ;
typedef  TYPE_1__ XtExcFrame ;

/* Variables and functions */
 int SOC_IROM_HIGH ; 
 int SOC_IROM_MASK_LOW ; 
 int /*<<< orphan*/  FUNC0 (int volatile) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(XtExcFrame *frame)
{
    /* Print out memory around the instruction word */
    uint32_t epc = frame->pc;
    epc = (epc & ~0x3) - 4;

    /* check that the address was sane */
    if (epc < SOC_IROM_MASK_LOW || epc >= SOC_IROM_HIGH) {
        return;
    }
    volatile uint32_t* pepc = (uint32_t*)epc;

    FUNC1("Memory dump at 0x");
    FUNC0(epc);
    FUNC1(": ");

    FUNC0(*pepc);
    FUNC1(" ");
    FUNC0(*(pepc + 1));
    FUNC1(" ");
    FUNC0(*(pepc + 2));
    FUNC1("\r\n");
}