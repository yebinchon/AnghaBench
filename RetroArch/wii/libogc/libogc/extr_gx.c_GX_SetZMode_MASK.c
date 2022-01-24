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
typedef  int u8 ;
struct TYPE_2__ {int peZMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC2(u8 enable,u8 func,u8 update_enable)
{
	__gx->peZMode = (__gx->peZMode&~0x1)|(enable&1);
	__gx->peZMode = (__gx->peZMode&~0xe)|(FUNC1(func,1,3));
	__gx->peZMode = (__gx->peZMode&~0x10)|(FUNC1(update_enable,4,1));
	FUNC0(__gx->peZMode);
}