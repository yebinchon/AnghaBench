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

/* Variables and functions */
 TYPE_1__* COMP ; 
 int COMP_CSR_COMP1OUT ; 
 int COMP_OutputLevel_High ; 
 int COMP_OutputLevel_Low ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

uint32_t FUNC2(uint32_t COMP_Selection)
{
  uint32_t compout = 0x0;

  /* Check the parameters */
  FUNC1(FUNC0(COMP_Selection));

  /* Check if selected comparator output is high */
  if ((COMP->CSR & (COMP_CSR_COMP1OUT<<COMP_Selection)) != 0)
  {
    compout = COMP_OutputLevel_High;
  }
  else
  {
    compout = COMP_OutputLevel_Low;
  }

  /* Return the comparator output level */
  return (uint32_t)(compout);
}