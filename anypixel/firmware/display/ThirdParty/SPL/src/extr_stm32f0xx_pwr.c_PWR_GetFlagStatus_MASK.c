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
typedef  int uint32_t ;
struct TYPE_2__ {int CSR; } ;
typedef  scalar_t__ FlagStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* PWR ; 
 scalar_t__ RESET ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

FlagStatus FUNC2(uint32_t PWR_FLAG)
{
  FlagStatus bitstatus = RESET;
  /* Check the parameters */
  FUNC1(FUNC0(PWR_FLAG));

  if ((PWR->CSR & PWR_FLAG) != (uint32_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  /* Return the flag status */
  return bitstatus;
}