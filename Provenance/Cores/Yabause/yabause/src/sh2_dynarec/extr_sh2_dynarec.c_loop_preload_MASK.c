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
 int EXCLUDE_REG ; 
 int HOST_REGS ; 
 char TEMPREG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char,int) ; 
 scalar_t__ FUNC2 (char*,char) ; 

__attribute__((used)) static void FUNC3(signed char pre[],signed char entry[])
{
  int hr;
  for(hr=0;hr<HOST_REGS;hr++) {
    if(hr!=EXCLUDE_REG) {
      if(pre[hr]!=entry[hr]) {
        if(entry[hr]>=0) {
          if(FUNC2(pre,entry[hr])<0) {
            FUNC0("loop preload:\n");
            //printf("loop preload: %d\n",hr);
            if(entry[hr]<TEMPREG)
            {
              FUNC1(entry[hr],hr);
            }
          }
        }
      }
    }
  }
}