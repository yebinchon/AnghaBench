#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pixel; } ;
typedef  TYPE_1__ XColor ;
typedef  int /*<<< orphan*/  Window ;
typedef  scalar_t__ Pixmap ;
typedef  int /*<<< orphan*/  Display ;
typedef  int /*<<< orphan*/  Cursor ;
typedef  int /*<<< orphan*/  Colormap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ None ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC9(Display *dpy, Window win)
{
   static char bm_no_data[] = {0, 0, 0, 0, 0, 0, 0, 0};
   Cursor no_ptr;
   Pixmap bm_no;
   XColor black, dummy;
   Colormap colormap = FUNC0(dpy, FUNC1(dpy));

   if (!FUNC2(dpy, colormap, "black", &black, &dummy))
      return;

   bm_no  = FUNC3(dpy, win, bm_no_data, 8, 8);
   no_ptr = FUNC4(dpy, bm_no, bm_no, &black, &black, 0, 0);

   FUNC5(dpy, win, no_ptr);
   FUNC7(dpy, no_ptr);

   if (bm_no != None)
      FUNC8(dpy, bm_no);

   FUNC6(dpy, colormap, &black.pixel, 1, 0);
}