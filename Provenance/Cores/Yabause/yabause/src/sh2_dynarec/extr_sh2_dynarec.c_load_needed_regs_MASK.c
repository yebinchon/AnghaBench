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
 char CCREG ; 
 int EXCLUDE_REG ; 
 int HOST_REGS ; 
 char TEMPREG ; 
 int /*<<< orphan*/  FUNC0 (char,int) ; 
 scalar_t__ FUNC1 (char*,char) ; 

void FUNC2(signed char i_regmap[],signed char next_regmap[])
{
  int hr;
  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      if(FUNC1(next_regmap,i_regmap[hr])>=0) {
        if(i_regmap[hr]>=0 && i_regmap[hr]<TEMPREG && i_regmap[hr]!=CCREG)
        {
          FUNC0(i_regmap[hr],hr);
        }
      }
    }
  }
}