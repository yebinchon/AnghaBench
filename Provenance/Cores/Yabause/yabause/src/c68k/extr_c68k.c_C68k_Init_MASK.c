#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  Status; int /*<<< orphan*/  Reset_CallBack; int /*<<< orphan*/ * Interrupt_CallBack; } ;
typedef  TYPE_1__ c68k_struc ;
typedef  int /*<<< orphan*/  C68K_INT_CALLBACK ;

/* Variables and functions */
 int /*<<< orphan*/  C68K_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * C68k_Interrupt_Ack_Dummy ; 
 int /*<<< orphan*/  C68k_Read_Dummy ; 
 int /*<<< orphan*/  C68k_Reset_Dummy ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  C68k_Write_Dummy ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC6(c68k_struc *cpu, C68K_INT_CALLBACK *int_cb)
{
    FUNC5(cpu, 0, sizeof(c68k_struc));

    FUNC1(cpu, C68k_Read_Dummy);
    FUNC2(cpu, C68k_Read_Dummy);

    FUNC3(cpu, C68k_Write_Dummy);
    FUNC4(cpu, C68k_Write_Dummy);

    if (int_cb) cpu->Interrupt_CallBack = int_cb;
    else cpu->Interrupt_CallBack = C68k_Interrupt_Ack_Dummy;
    cpu->Reset_CallBack = C68k_Reset_Dummy;

    // used to init JumpTable
    cpu->Status |= C68K_DISABLE;
    FUNC0(cpu, 0);
    
    cpu->Status &= ~C68K_DISABLE;
}