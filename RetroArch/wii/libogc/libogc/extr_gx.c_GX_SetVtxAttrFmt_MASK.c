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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int VATTable; int dirtyState; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* __gx ; 

void FUNC1(u8 vtxfmt,u32 vtxattr,u32 comptype,u32 compsize,u32 frac)
{
	FUNC0(vtxfmt,vtxattr,comptype,compsize,frac);
	__gx->VATTable |= (1<<vtxfmt);
	__gx->dirtyState |= 0x0010;
}