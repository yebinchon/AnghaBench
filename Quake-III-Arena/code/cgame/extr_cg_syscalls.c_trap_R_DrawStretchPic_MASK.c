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
typedef  int /*<<< orphan*/  qhandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  CG_R_DRAWSTRETCHPIC ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void	FUNC2( float x, float y, float w, float h, 
							   float s1, float t1, float s2, float t2, qhandle_t hShader ) {
	FUNC1( CG_R_DRAWSTRETCHPIC, FUNC0(x), FUNC0(y), FUNC0(w), FUNC0(h), FUNC0(s1), FUNC0(t1), FUNC0(s2), FUNC0(t2), hShader );
}