#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ SR2; } ;
struct TYPE_5__ {scalar_t__ SR3; } ;
struct TYPE_4__ {scalar_t__ SR4; } ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 scalar_t__ DISABLE ; 
 TYPE_3__* FSMC_Bank2 ; 
 scalar_t__ FSMC_Bank2_NAND ; 
 TYPE_2__* FSMC_Bank3 ; 
 scalar_t__ FSMC_Bank3_NAND ; 
 TYPE_1__* FSMC_Bank4 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(uint32_t FSMC_Bank, uint32_t FSMC_IT, FunctionalState NewState)
{
  FUNC3(FUNC1(FSMC_Bank));
  FUNC3(FUNC0(FSMC_IT));	
  FUNC3(FUNC2(NewState));
  
  if (NewState != DISABLE)
  {
    /* Enable the selected FSMC_Bank2 interrupts */
    if(FSMC_Bank == FSMC_Bank2_NAND)
    {
      FSMC_Bank2->SR2 |= FSMC_IT;
    }
    /* Enable the selected FSMC_Bank3 interrupts */
    else if (FSMC_Bank == FSMC_Bank3_NAND)
    {
      FSMC_Bank3->SR3 |= FSMC_IT;
    }
    /* Enable the selected FSMC_Bank4 interrupts */
    else
    {
      FSMC_Bank4->SR4 |= FSMC_IT;    
    }
  }
  else
  {
    /* Disable the selected FSMC_Bank2 interrupts */
    if(FSMC_Bank == FSMC_Bank2_NAND)
    {
      
      FSMC_Bank2->SR2 &= (uint32_t)~FSMC_IT;
    }
    /* Disable the selected FSMC_Bank3 interrupts */
    else if (FSMC_Bank == FSMC_Bank3_NAND)
    {
      FSMC_Bank3->SR3 &= (uint32_t)~FSMC_IT;
    }
    /* Disable the selected FSMC_Bank4 interrupts */
    else
    {
      FSMC_Bank4->SR4 &= (uint32_t)~FSMC_IT;    
    }
  }
}