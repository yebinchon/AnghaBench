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
typedef  int uint8_t ;
struct TYPE_2__ {int CR; } ;

/* Variables and functions */
 int BIT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* WWDG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint8_t Counter)
{
  /* Check the parameters */
  FUNC1(FUNC0(Counter));
  /* Write to T[6:0] bits to configure the counter value, no need to do
     a read-modify-write; writing a 0 to WDGA bit does nothing */
  WWDG->CR = Counter & BIT_MASK;
}