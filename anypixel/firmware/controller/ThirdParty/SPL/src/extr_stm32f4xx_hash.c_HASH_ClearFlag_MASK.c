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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  SR; } ;

/* Variables and functions */
 TYPE_1__* HASH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(uint16_t HASH_FLAG)
{
  /* Check the parameters */
  FUNC1(FUNC0(HASH_FLAG));
  
  /* Clear the selected HASH flags */
  HASH->SR = ~(uint32_t)HASH_FLAG;
}