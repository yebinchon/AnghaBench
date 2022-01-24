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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int texCopyTL; int texCopyWH; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (int,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC2(u16 left,u16 top,u16 wd,u16 ht)
{
	__gx->texCopyTL = (__gx->texCopyTL&~0x00ffffff)|FUNC0(left,top);
	__gx->texCopyTL = (__gx->texCopyTL&~0xff000000)|(FUNC1(0x49,24,8));
	__gx->texCopyWH = (__gx->texCopyWH&~0x00ffffff)|FUNC0((wd-1),(ht-1));
	__gx->texCopyWH = (__gx->texCopyWH&~0xff000000)|(FUNC1(0x4a,24,8));
}