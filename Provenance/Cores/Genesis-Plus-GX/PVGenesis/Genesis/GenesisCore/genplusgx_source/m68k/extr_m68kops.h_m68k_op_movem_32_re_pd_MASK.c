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
 int AY ; 
 int CYC_MOVEM_L ; 
 int FUNC0 () ; 
 int* REG_DA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(void)
{
  uint i = 0;
  uint register_list = FUNC0();
  uint ea = AY;
  uint count = 0;

  for(; i < 16; i++)
    if(register_list & (1 << i))
    {
      ea -= 4;
      FUNC2(ea+2, REG_DA[15-i] & 0xFFFF );
      FUNC2(ea, (REG_DA[15-i] >> 16) & 0xFFFF );
      count++;
    }
  AY = ea;

  FUNC1(count * CYC_MOVEM_L);
}