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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int dispCopyDst; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC2(u16 wd,u16 ht)
{
	__gx->dispCopyDst = (__gx->dispCopyDst&~0x3ff)|(FUNC1(wd,4,10));
	__gx->dispCopyDst = (__gx->dispCopyDst&~0xff000000)|(FUNC0(0x4d,24,8));
}