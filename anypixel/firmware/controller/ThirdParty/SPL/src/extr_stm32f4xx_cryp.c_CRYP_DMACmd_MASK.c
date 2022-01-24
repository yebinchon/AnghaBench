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
struct TYPE_2__ {scalar_t__ DMACR; } ;
typedef  scalar_t__ FunctionalState ;

/* Variables and functions */
 TYPE_1__* CRYP ; 
 scalar_t__ DISABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t CRYP_DMAReq, FunctionalState NewState)
{
  /* Check the parameters */
  FUNC2(FUNC0(CRYP_DMAReq));
  FUNC2(FUNC1(NewState));

  if (NewState != DISABLE)
  {
    /* Enable the selected CRYP DMA request */
    CRYP->DMACR |= CRYP_DMAReq;
  }
  else
  {
    /* Disable the selected CRYP DMA request */
    CRYP->DMACR &= (uint8_t)~CRYP_DMAReq;
  }
}