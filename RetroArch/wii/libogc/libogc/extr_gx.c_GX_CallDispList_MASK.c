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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  vcdClear; scalar_t__ dirtyState; } ;
struct TYPE_3__ {int U8; int /*<<< orphan*/  U32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* __gx ; 
 TYPE_1__* wgPipe ; 

void FUNC3(void *list,u32 nbytes)
{
	if(__gx->dirtyState)
		FUNC2();

	if(!__gx->vcdClear)
		FUNC1();

	wgPipe->U8 = 0x40;		//call displaylist
	wgPipe->U32 = FUNC0(list);
	wgPipe->U32 = nbytes;
}