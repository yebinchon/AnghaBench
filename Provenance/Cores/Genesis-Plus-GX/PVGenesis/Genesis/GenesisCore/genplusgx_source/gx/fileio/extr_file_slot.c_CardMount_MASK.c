#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ CARD_ERROR_READY ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  SysArea ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(int slot)
{
  int tries = 0;
#ifdef HW_RVL
  *(unsigned long *) (0xCD006800) |= 1 << 13; /*** Disable Encryption ***/
#else
  *(unsigned long *) (0xCC006800) |= 1 << 13; /*** Disable Encryption ***/
#endif
  while (tries < 10)
  {
    FUNC2 ();
    if (FUNC0(slot, SysArea, NULL) == CARD_ERROR_READY)
      return 1;
    else
      FUNC1 ();
    tries++;
  }
  return 0;
}