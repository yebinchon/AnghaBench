#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  USP; int /*<<< orphan*/ * A; scalar_t__ flag_S; } ;
typedef  TYPE_1__ c68k_struc ;

/* Variables and functions */

u32 FUNC0(c68k_struc *cpu)
{
    if (cpu->flag_S) return cpu->A[7];
    else return cpu->USP;
}