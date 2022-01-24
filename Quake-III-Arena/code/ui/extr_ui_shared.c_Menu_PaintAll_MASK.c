#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; } ;
typedef  TYPE_1__ vec4_t ;
struct TYPE_5__ {int /*<<< orphan*/  FPS; int /*<<< orphan*/  (* drawText ) (int,int,double,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_3__* DC ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * Menus ; 
 int /*<<< orphan*/  captureData ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ debugMode ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC3 (int,int,double,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

void FUNC5() {
	int i;
	if (&captureFunc) {
		FUNC2(captureData);
	}

	for (i = 0; i < FUNC0(); i++) {
		FUNC1(&Menus[i], qfalse);
	}

	if (debugMode) {
		vec4_t v = {1, 1, 1, 1};
		DC->drawText(5, 25, .5, v, FUNC4("fps: %f", DC->FPS), 0, 0, 0);
	}
}