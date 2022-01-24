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
 int /*<<< orphan*/  PAHW_32X ; 
 int /*<<< orphan*/ * Pico32xMem ; 
 int /*<<< orphan*/  PicoAHW ; 
 int /*<<< orphan*/  msh2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ssh2 ; 

void FUNC2(void)
{
  if (Pico32xMem != NULL)
    FUNC0(Pico32xMem, sizeof(*Pico32xMem));
  Pico32xMem = NULL;
  FUNC1(&msh2);
  FUNC1(&ssh2);

  PicoAHW &= ~PAHW_32X;
}