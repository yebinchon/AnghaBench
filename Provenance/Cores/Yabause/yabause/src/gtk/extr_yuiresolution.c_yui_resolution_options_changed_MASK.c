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
typedef  int gint ;
struct TYPE_3__ {int /*<<< orphan*/  group; int /*<<< orphan*/  keyfile; int /*<<< orphan*/  options; } ;
typedef  TYPE_1__ YuiResolution ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(GtkWidget * w, YuiResolution * yr) {
	gint active = FUNC2(FUNC0(yr->options));
	switch(active) {
		case 0:
			FUNC1(yr->keyfile, yr->group, "Fullscreen", 0);
			FUNC1(yr->keyfile, yr->group, "KeepRatio", 0);
			break;
		case 1:
			FUNC1(yr->keyfile, yr->group, "Fullscreen", 1);
			FUNC1(yr->keyfile, yr->group, "KeepRatio", 0);
			break;
		case 2:
			FUNC1(yr->keyfile, yr->group, "Fullscreen", 0);
			FUNC1(yr->keyfile, yr->group, "KeepRatio", 1);
			break;
	}
}