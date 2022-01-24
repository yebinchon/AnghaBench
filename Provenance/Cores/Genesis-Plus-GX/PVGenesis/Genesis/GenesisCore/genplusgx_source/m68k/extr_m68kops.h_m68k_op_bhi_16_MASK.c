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
typedef  int /*<<< orphan*/  uint ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  CYC_BCC_NOTAKE_W ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int REG_PC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
  if(FUNC0())
  {
    uint offset = FUNC1();
    REG_PC -= 2;
    FUNC3(offset);
    return;
  }
  REG_PC += 2;
  FUNC2(CYC_BCC_NOTAKE_W);
}