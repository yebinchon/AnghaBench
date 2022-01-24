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
struct proc {int p_btrace; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int pc_sample_pid ; 
 int /*<<< orphan*/  pc_trace_frameworks ; 
 struct proc* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 

int
FUNC2(void)
{
  struct proc *p;
  if (-1 != pc_sample_pid) {
    p = FUNC0(pc_sample_pid);
    if (p) {
      p->p_btrace = 1;
	 FUNC1(p);
    } 
  }
  else {
    pc_trace_frameworks = TRUE;
  }

  return 1;

}