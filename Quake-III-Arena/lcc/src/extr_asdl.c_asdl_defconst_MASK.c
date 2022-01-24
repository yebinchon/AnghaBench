#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long i; unsigned long u; scalar_t__ p; } ;
typedef  TYPE_1__ Value ;

/* Variables and functions */
#define  F 131 
#define  I 130 
#define  P 129 
#define  U 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(int suffix, int size, Value v) {
	switch (suffix) {
	case I: FUNC2(FUNC3(suffix, size, v.i)); return;
	case U: FUNC2(FUNC3(suffix, size, v.u)); return;
	case P: FUNC2(FUNC3(suffix, size, (unsigned long)v.p)); return;	/* FIXME */
	case F: FUNC2(FUNC4(size, FUNC1(size, v))); return;
	FUNC0(0);
	}
}