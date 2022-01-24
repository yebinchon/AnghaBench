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
typedef  int /*<<< orphan*/  uint ;
struct TYPE_2__ {scalar_t__ cycle_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_STOPPED ; 
 scalar_t__ FLAG_S ; 
 int MUL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  STOP_LEVEL_STOP ; 
 TYPE_1__ m68ki_cpu ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
  if(FLAG_S)
  {
    uint new_sr = FUNC0();
    CPU_STOPPED |= STOP_LEVEL_STOP;
    FUNC3(new_sr);
    FUNC1(m68ki_cpu.cycle_end - 4*MUL); 
    return;
  }
  FUNC2();
}