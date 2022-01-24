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
typedef  int uint ;

/* Variables and functions */
 int /*<<< orphan*/  CFLAG_CLEAR ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FLAG_C ; 
 int /*<<< orphan*/  FLAG_N ; 
 int /*<<< orphan*/  FLAG_V ; 
 int FLAG_Z ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  VFLAG_CLEAR ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(void)
{
  uint ea = FUNC0();
  uint dst = FUNC2(ea);

  FLAG_Z = dst;
  FLAG_N = FUNC1(dst);
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;

  /* The Genesis/Megadrive games Gargoyles and Ex-Mutants need the TAS writeback
       disabled in order to function properly.  Some Amiga software may also rely
       on this, but only when accessing specific addresses so additional functionality
       will be needed. */
  if (FUNC3()) FUNC4(ea, dst | 0x80);
}