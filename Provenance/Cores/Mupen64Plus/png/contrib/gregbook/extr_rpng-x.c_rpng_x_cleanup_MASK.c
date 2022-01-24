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
struct TYPE_3__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  colormap ; 
 int /*<<< orphan*/  display ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  gc ; 
 scalar_t__ have_colormap ; 
 scalar_t__ have_gc ; 
 scalar_t__ have_nondefault_visual ; 
 scalar_t__ have_window ; 
 char* image_data ; 
 int /*<<< orphan*/  visual_list ; 
 int /*<<< orphan*/  window ; 
 TYPE_1__* ximage ; 

__attribute__((used)) static void FUNC6(void)
{
    if (image_data) {
        FUNC5(image_data);
        image_data = NULL;
    }

    if (ximage) {
        if (ximage->data) {
            FUNC5(ximage->data);           /* we allocated it, so we free it */
            ximage->data = (char *)NULL;  /*  instead of XDestroyImage() */
        }
        FUNC0(ximage);
        ximage = NULL;
    }

    if (have_gc)
        FUNC4(display, gc);

    if (have_window)
        FUNC1(display, window);

    if (have_colormap)
        FUNC3(display, colormap);

    if (have_nondefault_visual)
        FUNC2(visual_list);
}