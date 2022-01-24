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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ESP ; 
 int EXCLUDE_REG ; 
 int HOST_REGS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ slave ; 

void FUNC3(u32 reglist)
{
  reglist&=0xC7; // only save the caller-save registers, %eax, %ecx, %edx, %esi, %edi
  int hr;
  int count=FUNC0(reglist);
  if(slave) FUNC1(ESP,(6-count)*8,ESP);
  else FUNC1(ESP,(7-count)*8,ESP);
  if(count) {
    for(hr=HOST_REGS-1;hr>=0;hr--) {
      if(hr!=EXCLUDE_REG) {
        if((reglist>>hr)&1) {
          FUNC2(hr);
        }
      }
    }
  }
}