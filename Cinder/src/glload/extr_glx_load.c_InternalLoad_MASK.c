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
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int glx_LOAD_SUCCEEDED ; 

__attribute__((used)) static int FUNC3(Display *display, int screen)
{
	FUNC0();
	
	
	FUNC1((const char *)FUNC2(display, screen));
	
	return glx_LOAD_SUCCEEDED;
}