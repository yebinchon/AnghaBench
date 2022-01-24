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
struct TYPE_2__ {int dirtyState; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_1__* __gx ; 

__attribute__((used)) static void FUNC9()
{
	if(__gx->dirtyState&0x0001) {
		FUNC4();
	}
	if(__gx->dirtyState&0x0002) {
		FUNC8();
	}
	if(__gx->dirtyState&0x0004) {
		FUNC2();
	}
	if(__gx->dirtyState&0x0008) {
		FUNC7();
	}
	if(__gx->dirtyState&0x0010) {
		FUNC6();
	}
	if(__gx->dirtyState&~0xff) {
		if(__gx->dirtyState&0x0f00) {
			FUNC1();
		}
		if(__gx->dirtyState&0x0100f000) {
			FUNC0();
		}
		if(__gx->dirtyState&0x02ff0000) {
			FUNC5();
		}
		if(__gx->dirtyState&0x04000000) {
			FUNC3(0);
			FUNC3(5);
		}
	}
	__gx->dirtyState = 0;
}