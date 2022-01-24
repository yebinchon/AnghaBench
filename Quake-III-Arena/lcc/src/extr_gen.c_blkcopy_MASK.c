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
struct TYPE_3__ {int /*<<< orphan*/  (* blkloop ) (int,int,int,int,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ x; } ;

/* Variables and functions */
 TYPE_2__* IR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int,int*) ; 

void FUNC3(int dreg, int doff, int sreg, int soff, int size, int tmp[]) {
	FUNC0(size >= 0);
	if (size == 0)
		return;
	else if (size <= 2)
		FUNC1(size, dreg, doff, sreg, soff, size, tmp);
	else if (size == 3) {
		FUNC1(2, dreg, doff,   sreg, soff,   2, tmp);
		FUNC1(1, dreg, doff+2, sreg, soff+2, 1, tmp);
	}
	else if (size <= 16) {
		FUNC1(4, dreg, doff, sreg, soff, size&~3, tmp);
		FUNC3(dreg, doff+(size&~3),
	                sreg, soff+(size&~3), size&3, tmp);
	}
	else
		(*IR->x.blkloop)(dreg, doff, sreg, soff, size, tmp);
}