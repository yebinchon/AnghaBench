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
struct TYPE_2__ {scalar_t__ mouseActive; int /*<<< orphan*/  mouseInitialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ qfalse ; 
 TYPE_1__ s_wmv ; 

void FUNC2( void ) {
	if (!s_wmv.mouseInitialized ) {
		return;
	}
	if (!s_wmv.mouseActive ) {
		return;
	}
	s_wmv.mouseActive = qfalse;

	FUNC0();
	FUNC1();
}