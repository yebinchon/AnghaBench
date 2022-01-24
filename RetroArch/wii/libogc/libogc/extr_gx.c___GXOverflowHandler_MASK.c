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

/* Variables and functions */
 int /*<<< orphan*/  GX_DISABLE ; 
 int /*<<< orphan*/  GX_ENABLE ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _gxcurrentlwp ; 
 int /*<<< orphan*/  _gxoverflowcount ; 
 int _gxoverflowsuspend ; 

__attribute__((used)) static void FUNC3()
{
	if(!_gxoverflowsuspend) {
		_gxoverflowsuspend = 1;
		_gxoverflowcount++;
		FUNC1(GX_DISABLE,GX_ENABLE);
		FUNC2(GX_TRUE,GX_FALSE);
		FUNC0(_gxcurrentlwp);
	}
}