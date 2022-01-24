#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint ;
struct TYPE_3__ {scalar_t__ detected; } ;
struct TYPE_4__ {TYPE_1__ poll; } ;

/* Variables and functions */
 int /*<<< orphan*/  CYC_DBCC_F_EXP ; 
 int /*<<< orphan*/  CYC_DBCC_F_NOEXP ; 
 int DY ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int REG_PC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__ m68ki_cpu ; 

__attribute__((used)) static void FUNC5(void)
{
  uint* r_dst = &DY;
  uint res = FUNC0(*r_dst - 1);
  *r_dst = FUNC1(*r_dst) | res;

  /* reset idle loop detection */
  m68ki_cpu.poll.detected = 0;

  if(res != 0xffff)
  {
    uint offset = FUNC2();
    REG_PC -= 2;
    FUNC4(offset);
    FUNC3(CYC_DBCC_F_NOEXP);
    return;
  }
  REG_PC += 2;
  FUNC3(CYC_DBCC_F_EXP);
}