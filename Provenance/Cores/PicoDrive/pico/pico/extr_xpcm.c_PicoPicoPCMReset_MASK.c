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
struct TYPE_2__ {int /*<<< orphan*/  xpcm_buffer; } ;

/* Variables and functions */
 TYPE_1__ PicoPicohw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int quant ; 
 scalar_t__ sample ; 
 scalar_t__ sgn ; 

void FUNC1(void)
{
  sample = sgn = 0;
  quant = 0x7f;
  FUNC0(PicoPicohw.xpcm_buffer, 0, sizeof(PicoPicohw.xpcm_buffer));
}