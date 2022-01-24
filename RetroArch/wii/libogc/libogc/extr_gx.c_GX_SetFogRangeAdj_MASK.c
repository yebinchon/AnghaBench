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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int* r; } ;
typedef  TYPE_1__ GXFogAdjTbl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 

void FUNC2(u8 enable,u16 center,GXFogAdjTbl *table)
{
	u32 val;

	if(enable) {
		val = 0xe9000000|(FUNC1(table->r[1],12,12))|(table->r[0]&0x0fff);
		FUNC0(val);

		val = 0xea000000|(FUNC1(table->r[3],12,12))|(table->r[2]&0x0fff);
		FUNC0(val);

		val = 0xeb000000|(FUNC1(table->r[5],12,12))|(table->r[4]&0x0fff);
		FUNC0(val);

		val = 0xec000000|(FUNC1(table->r[7],12,12))|(table->r[6]&0x0fff);
		FUNC0(val);

		val = 0xed000000|(FUNC1(table->r[9],12,12))|(table->r[8]&0x0fff);
		FUNC0(val);
	}
	val = 0xe8000000|(FUNC1(enable,10,1))|((center + 342)&0x03ff);
	FUNC0(val);
}