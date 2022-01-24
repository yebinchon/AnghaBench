#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_3__ {int width_table; int sheet_column; int sheet_row; } ;
typedef  TYPE_1__ sys_fontheader ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 int sys_fontcharsinsheet ; 
 TYPE_1__* sys_fontdata ; 
 int /*<<< orphan*/ * sys_fontwidthtab ; 

u32 FUNC2(void *src,void *dest)
{
	if(FUNC0(src)==0) return 0;

	FUNC1(src,dest);

	sys_fontdata = (sys_fontheader*)dest;
	sys_fontwidthtab = (u8*)dest+sys_fontdata->width_table;
	sys_fontcharsinsheet = sys_fontdata->sheet_column*sys_fontdata->sheet_row;

	/* TODO: implement SJIS handling */
	return 1;
}