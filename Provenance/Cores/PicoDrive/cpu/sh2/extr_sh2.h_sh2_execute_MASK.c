#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cycles_timeslice; } ;
typedef  TYPE_1__ SH2 ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static inline int FUNC2(SH2 *sh2, int cycles, int use_drc)
{
  int ret;

  sh2->cycles_timeslice = cycles;
#ifdef DRC_SH2
  if (use_drc)
    ret = sh2_execute_drc(sh2, cycles);
  else
#endif
    ret = FUNC1(sh2, cycles);

  return sh2->cycles_timeslice - ret;
}