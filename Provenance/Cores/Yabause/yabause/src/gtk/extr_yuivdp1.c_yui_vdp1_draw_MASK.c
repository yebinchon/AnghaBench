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
typedef  int /*<<< orphan*/  guchar ;
struct TYPE_3__ {int w; scalar_t__ h; int /*<<< orphan*/  image; int /*<<< orphan*/ * texture; } ;
typedef  TYPE_1__ YuiVdp1 ;
typedef  int /*<<< orphan*/  GdkPixbuf ;

/* Variables and functions */
 int /*<<< orphan*/  GDK_COLORSPACE_RGB ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yui_texture_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(YuiVdp1 * vdp1) {
	GdkPixbuf * pixbuf;
 	int rowstride;
 
 	if ((vdp1->texture != NULL) && (vdp1->w > 0) && (vdp1->h > 0)) {
 		rowstride = vdp1->w * 4;
 		rowstride += (rowstride % 4)? (4 - (rowstride % 4)): 0;
 		pixbuf = FUNC2((const guchar *) vdp1->texture, GDK_COLORSPACE_RGB, TRUE, 8,
			vdp1->w, vdp1->h, rowstride, yui_texture_free, NULL);
 
 		FUNC3(FUNC0(vdp1->image), pixbuf, vdp1->w, vdp1->h);
 
 		FUNC1(pixbuf);
 	}
}