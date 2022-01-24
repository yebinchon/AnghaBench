#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  float guint ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_10__ {TYPE_2__* menu; int /*<<< orphan*/  area; } ;
struct TYPE_9__ {float min_aspect; float max_aspect; } ;
struct TYPE_7__ {scalar_t__ height; } ;
struct TYPE_8__ {TYPE_1__ allocation; } ;
typedef  TYPE_3__ GdkGeometry ;

/* Variables and functions */
 int /*<<< orphan*/  GDK_HINT_ASPECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,float,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keyfile ; 
 int /*<<< orphan*/  yui ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 

void FUNC6(guint width, guint height, gboolean fullscreen) {
	if (width <= 0) width = 320;
	if (height <= 0) height = 224;

	if (FUNC2(keyfile, "General", "KeepRatio", 0))
	{
		GdkGeometry geometry;
		geometry.min_aspect = (float) width / height;
		geometry.max_aspect = (float) width / height;
		FUNC4(FUNC0(yui), FUNC1(yui)->area, &geometry, GDK_HINT_ASPECT);
	}
	else
	{
		FUNC4(FUNC0(yui), FUNC1(yui)->area, NULL, 0);
	}

	FUNC3(FUNC0(yui), width, height + FUNC1(yui)->menu->allocation.height);

	FUNC5(FUNC1(yui), fullscreen);
}