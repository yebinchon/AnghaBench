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
struct TYPE_2__ {int openstate; } ;

/* Variables and functions */
 TYPE_1__ __usbdev ; 
 int __wait4hci ; 

void FUNC0()
{
	if(__usbdev.openstate!=0x0002) return;

	__usbdev.openstate = 4;
	__wait4hci = 1;
}