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
struct TYPE_2__ {int* VAT0reg; int* VAT1reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 TYPE_1__* __gx ; 

__attribute__((used)) static void FUNC3()
{
	s32 i;

	i=0;
	while(i<8) {
		__gx->VAT0reg[i] = 0x40000000;
		__gx->VAT1reg[i] = 0x80000000;
		FUNC1((0x0080|i),__gx->VAT1reg[i]);
		i++;
	}

	FUNC2(0x1000,0x3f);
	FUNC2(0x1012,0x01);

	FUNC0(0x5800000f);

}