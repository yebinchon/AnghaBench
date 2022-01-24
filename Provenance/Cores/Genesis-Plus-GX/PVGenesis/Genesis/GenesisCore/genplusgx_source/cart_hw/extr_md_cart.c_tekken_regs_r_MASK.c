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
typedef  int uint32 ;
struct TYPE_3__ {int* regs; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;

/* Variables and functions */
 TYPE_2__ cart ; 
 int FUNC0 (int) ; 

__attribute__((used)) static uint32 FUNC1(uint32 address)
{
  /* data output */
  if ((address & 0x0e) == 0x02)
  {
    /* maybe depends on mode bits ? */
    return (cart.hw.regs[0] - 1);
  }

  return FUNC0(address);
}