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
struct TYPE_2__ {scalar_t__* regmap_entry; } ;

/* Variables and functions */
 scalar_t__ CCREG ; 
 int CLOCK_DIVIDER ; 
 size_t HOST_CCREG ; 
 int HOST_REGS ; 
 scalar_t__ TEMPREG ; 
 int* ccadj ; 
 int /*<<< orphan*/  FUNC0 (size_t,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,size_t) ; 
 scalar_t__* is_ds ; 
 TYPE_1__* regs ; 

void FUNC3(int t)
{
  int hr;
  if(is_ds[t]) FUNC0(HOST_CCREG,CLOCK_DIVIDER,HOST_CCREG);
  else if(ccadj[t]) FUNC0(HOST_CCREG,-ccadj[t]*CLOCK_DIVIDER,HOST_CCREG);
  if(regs[t].regmap_entry[HOST_CCREG]!=CCREG) {
    FUNC2(CCREG,HOST_CCREG);
  }
  // Load 32-bit regs
  for(hr=0;hr<HOST_REGS;hr++) {
    if(regs[t].regmap_entry[hr]>=0&&regs[t].regmap_entry[hr]<TEMPREG) {
      if(regs[t].regmap_entry[hr]!=CCREG)
      {
        FUNC1(regs[t].regmap_entry[hr],hr);
      }
    }
  }
}