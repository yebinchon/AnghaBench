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
typedef  int /*<<< orphan*/  glconfig_t ;
struct TYPE_2__ {int viewCluster; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  glConfig ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_1__ tr ; 

void FUNC5( glconfig_t *glconfigOut ) {

	FUNC3();

	*glconfigOut = glConfig;

	FUNC4();

	tr.viewCluster = -1;		// force markleafs to regenerate
	FUNC2();
	FUNC0();

	tr.registered = qtrue;

	// NOTE: this sucks, for some reason the first stretch pic is never drawn
	// without this we'd see a white flash on a level load because the very
	// first time the level shot would not be drawn
	FUNC1(0, 0, 0, 0, 0, 0, 1, 1, 0);
}