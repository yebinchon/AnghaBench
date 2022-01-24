#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_2__ {int FMR; } ;

/* Variables and functions */
 TYPE_1__* CAN ; 
 int FMR_FINIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint8_t CAN_BankNumber) 
{
  /* Check the parameters */
  FUNC1(FUNC0(CAN_BankNumber));
  
  /* Enter Initialisation mode for the filter */
  CAN->FMR |= FMR_FINIT;
  
  /* Select the start slave bank */
  CAN->FMR &= (uint32_t)0xFFFFC0F1 ;
  CAN->FMR |= (uint32_t)(CAN_BankNumber)<<8;
  
  /* Leave Initialisation mode for the filter */
  CAN->FMR &= ~FMR_FINIT;
}