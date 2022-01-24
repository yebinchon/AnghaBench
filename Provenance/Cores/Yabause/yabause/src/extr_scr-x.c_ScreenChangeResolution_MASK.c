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
struct TYPE_3__ {int /*<<< orphan*/  freq; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ supportedRes_struct ;
typedef  int /*<<< orphan*/  Window ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  RR_Rotate_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * x11Conf ; 
 int /*<<< orphan*/  x11OriginalRate ; 
 int /*<<< orphan*/  x11OriginalRotation ; 
 int /*<<< orphan*/  x11OriginalSizeId ; 

void FUNC8(supportedRes_struct * res)
{
   Display *dpy;
   Window root;

   // Open X11 connection
   dpy = FUNC2(NULL);
   root = FUNC0(dpy, 0);

   if (x11Conf != NULL) FUNC5(x11Conf);

   // Save original settings
   x11Conf = FUNC6(dpy, root);
   x11OriginalRate = FUNC4(x11Conf);
   x11OriginalSizeId = FUNC3(x11Conf, &x11OriginalRotation);

   // Change resolution
   FUNC7(dpy, x11Conf, root, res->index, RR_Rotate_0, res->freq, CurrentTime);

   // Close connection
   FUNC1(dpy);
}