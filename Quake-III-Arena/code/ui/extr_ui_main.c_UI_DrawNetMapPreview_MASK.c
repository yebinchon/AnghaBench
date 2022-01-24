#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
struct TYPE_6__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
struct TYPE_5__ {scalar_t__ currentServerPreview; } ;
struct TYPE_7__ {TYPE_1__ serverStatus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 
 TYPE_3__ uiInfo ; 

__attribute__((used)) static void FUNC2(rectDef_t *rect, float scale, vec4_t color) {

	if (uiInfo.serverStatus.currentServerPreview > 0) {
		FUNC0( rect->x, rect->y, rect->w, rect->h, uiInfo.serverStatus.currentServerPreview);
	} else {
		FUNC0( rect->x, rect->y, rect->w, rect->h, FUNC1("menu/art/unknownmap"));
	}
}