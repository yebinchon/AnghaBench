#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
struct TYPE_4__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ rectDef_t ;
typedef  int /*<<< orphan*/  qhandle_t ;
struct TYPE_5__ {scalar_t__ gametype; int capturelimit; int fraglimit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ GT_CTF ; 
 TYPE_2__ cgs ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(rectDef_t *rect, float scale, vec4_t color, qhandle_t shader, int textStyle) {
	int limit = (cgs.gametype >= GT_CTF) ? cgs.capturelimit : cgs.fraglimit;
	FUNC0(rect->x, rect->y, scale, color, FUNC1("%2i", limit),0, 0, textStyle); 
}