#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  fontInfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  CG_R_REGISTERFONT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 

void FUNC1(const char *fontName, int pointSize, fontInfo_t *font) {
	FUNC0(CG_R_REGISTERFONT, fontName, pointSize, font );
}