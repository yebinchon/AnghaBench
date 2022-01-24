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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ cmap ; 
 int /*<<< orphan*/ * ctx ; 
 int /*<<< orphan*/ * dpy ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * vi ; 
 int /*<<< orphan*/ * vis ; 
 scalar_t__ wnd ; 

void FUNC5 ()
{
  if (NULL != dpy && NULL != ctx) FUNC4(dpy, ctx);
  if (NULL != dpy && 0 != wnd) FUNC1(dpy, wnd);
  if (NULL != dpy && 0 != cmap) FUNC3(dpy, cmap);
  if (NULL != vis)
    FUNC2(vis);
  else if (NULL != vi)
    FUNC2(vi);
  if (NULL != dpy) FUNC0(dpy);
}