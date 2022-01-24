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
 int /*<<< orphan*/  FUNC0 () ; 
 int PICMask ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int SBIRQ ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ format ; 
 scalar_t__ hsmode ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5(void)
{
 if(hsmode)
  FUNC1();                   /* High-speed mode requires a DSP reset. */
 else
  FUNC3(format?0xD9:0xDA);    /* Exit auto-init DMA transfer mode. */ 
 FUNC3(0xD3);                /* Turn speaker off. */

 FUNC4((SBIRQ>7)?0xA1:0x21,PICMask|(1<<(SBIRQ&7)));
 FUNC2();
 FUNC4((SBIRQ>7)?0xA1:0x21,PICMask);
 FUNC0();
}