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
struct TYPE_4__ {scalar_t__ mult_m68k_to_sh2; scalar_t__ mult_sh2_to_m68k; } ;
struct TYPE_3__ {scalar_t__ mult_m68k_to_sh2; scalar_t__ mult_sh2_to_m68k; } ;

/* Variables and functions */
 int /*<<< orphan*/  PICO_MSH2_HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ msh2 ; 
 TYPE_1__ ssh2 ; 

void FUNC1(void)
{
  if (msh2.mult_m68k_to_sh2 == 0 || msh2.mult_sh2_to_m68k == 0)
    FUNC0(PICO_MSH2_HZ, 0);
  if (ssh2.mult_m68k_to_sh2 == 0 || ssh2.mult_sh2_to_m68k == 0)
    FUNC0(0, PICO_MSH2_HZ);
}