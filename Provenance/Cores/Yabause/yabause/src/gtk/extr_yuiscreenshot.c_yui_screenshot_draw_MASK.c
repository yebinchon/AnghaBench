#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  guchar ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_5__ {int /*<<< orphan*/  image; } ;
typedef  TYPE_1__ YuiScreenshot ;
struct TYPE_7__ {int /*<<< orphan*/  pixels_height; int /*<<< orphan*/  pixels_width; int /*<<< orphan*/  pixels_rowstride; scalar_t__ pixels; } ;
struct TYPE_6__ {int /*<<< orphan*/  area; } ;
typedef  int /*<<< orphan*/  GdkPixbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GDK_COLORSPACE_RGB ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* yui ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean FUNC6(YuiScreenshot * ys) {
	GdkPixbuf * pixbuf, * correct;

	pixbuf = FUNC4((const guchar *) FUNC0(yui->area)->pixels, GDK_COLORSPACE_RGB, FALSE, 8,
			FUNC0(yui->area)->pixels_width, FUNC0(yui->area)->pixels_height, FUNC0(yui->area)->pixels_rowstride, NULL, NULL);
	correct = FUNC3(pixbuf, FALSE);

	FUNC5(FUNC1(ys->image), correct, FUNC0(yui->area)->pixels_width, FUNC0(yui->area)->pixels_height);

	FUNC2(pixbuf);
	FUNC2(correct);

	return TRUE;
}