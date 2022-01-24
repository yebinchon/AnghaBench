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
typedef  int /*<<< orphan*/  Window ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * x11Conf ; 
 int /*<<< orphan*/  x11OriginalRate ; 
 int /*<<< orphan*/  x11OriginalRotation ; 
 int /*<<< orphan*/  x11OriginalSizeId ; 

void FUNC4()
{
   Display *dpy;
   Window root;

   if (x11Conf == NULL) return;

   // Open X11 connection
   dpy = FUNC2(NULL);
   root = FUNC0(dpy, 0);
   FUNC3(dpy, x11Conf, root, x11OriginalSizeId, x11OriginalRotation, x11OriginalRate, CurrentTime);

   // Close connection
   FUNC1(dpy);
}