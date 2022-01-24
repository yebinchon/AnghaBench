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
typedef  int s32 ;
typedef  int /*<<< orphan*/  pbcallback ;
struct TYPE_2__ {int openstate; int /*<<< orphan*/  closecb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ __usbdev ; 
 scalar_t__ __wait4hci ; 

__attribute__((used)) static s32 FUNC2(pbcallback cb)
{
	if(__usbdev.openstate!=0x0004) return -1;

	__usbdev.closecb = cb;
	__usbdev.openstate = 2;

	FUNC1();
	FUNC0();

	__wait4hci = 0;
	return 0;
}