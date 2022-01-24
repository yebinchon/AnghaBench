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
typedef  int uint32 ;
struct TYPE_2__ {int /*<<< orphan*/  sram; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 TYPE_1__ sram ; 

__attribute__((used)) static void FUNC2(uint32 address, uint32 data)
{
  if (address >= 0x202000)
  {
    FUNC0(sram.sram , address & 0xffff, data);
    return;
  }

  FUNC1(address, data);
}