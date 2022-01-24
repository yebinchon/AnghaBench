#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ICR; } ;
struct TYPE_6__ {TYPE_1__ onchip; } ;
typedef  TYPE_2__ SH2_struct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int) ; 

void FUNC1(SH2_struct *context)
{
   context->onchip.ICR |= 0x8000;
   FUNC0(context, 0xB, 0x10);
}