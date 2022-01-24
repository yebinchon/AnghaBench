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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  guchar ;
struct TYPE_3__ {int /*<<< orphan*/  image; } ;
typedef  TYPE_1__ YuiVdp2 ;
typedef  int /*<<< orphan*/  GdkPixbuf ;

/* Variables and functions */
 int /*<<< orphan*/  GDK_COLORSPACE_RGB ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yui_texture_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC4(YuiVdp2 * vdp2, u32 * texture, int w, int h) {
	GdkPixbuf * pixbuf;
	int rowstride;

	if ((texture != NULL) && (w > 0) && (h > 0)) {
		rowstride = w * 4;
		rowstride += (rowstride % 4)? (4 - (rowstride % 4)): 0;
		pixbuf = FUNC2((const guchar *) texture, GDK_COLORSPACE_RGB, TRUE, 8,
			w, h, rowstride, yui_texture_free, NULL);

		FUNC3(FUNC0(vdp2->image), pixbuf, w, h);

		FUNC1(pixbuf);
	}
}