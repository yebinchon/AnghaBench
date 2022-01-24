#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  PCR2; } ;
struct TYPE_3__ {int /*<<< orphan*/  PCR3; } ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 TYPE_2__* FSMC_Bank2 ; 
 scalar_t__ FSMC_Bank2_NAND ; 
 TYPE_1__* FSMC_Bank3 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  PCR_ECCEN_RESET ; 
 int /*<<< orphan*/  PCR_ECCEN_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint32_t FSMC_Bank, FunctionalState NewState)
{
  FUNC2(FUNC0(FSMC_Bank));
  FUNC2(FUNC1(NewState));
  
  if (NewState != DISABLE)
  {
    /* Enable the selected NAND Bank ECC function by setting the ECCEN bit in the PCRx register */
    if(FSMC_Bank == FSMC_Bank2_NAND)
    {
      FSMC_Bank2->PCR2 |= PCR_ECCEN_SET;
    }
    else
    {
      FSMC_Bank3->PCR3 |= PCR_ECCEN_SET;
    }
  }
  else
  {
    /* Disable the selected NAND Bank ECC function by clearing the ECCEN bit in the PCRx register */
    if(FSMC_Bank == FSMC_Bank2_NAND)
    {
      FSMC_Bank2->PCR2 &= PCR_ECCEN_RESET;
    }
    else
    {
      FSMC_Bank3->PCR3 &= PCR_ECCEN_RESET;
    }
  }
}