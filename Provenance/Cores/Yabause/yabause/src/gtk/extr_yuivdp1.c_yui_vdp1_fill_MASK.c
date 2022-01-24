#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  guchar ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_5__ {scalar_t__ cursor; int w; int h; void* texture; int /*<<< orphan*/  buffer; int /*<<< orphan*/  store; } ;
typedef  TYPE_1__ YuiVdp1 ;
typedef  int /*<<< orphan*/  GtkTreeIter ;
typedef  int /*<<< orphan*/  GdkPixbuf ;

/* Variables and functions */
 int /*<<< orphan*/  GDK_COLORSPACE_RGB ; 
 int /*<<< orphan*/  GDK_INTERP_BILINEAR ; 
 scalar_t__ MAX_VDP1_COMMAND ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 void* FUNC2 (scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  yui_texture_free ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

void FUNC12(YuiVdp1 * vdp1) {
	gint j;
	gchar * string;
	gchar nameTemp[1024];
	GtkTreeIter iter;

	FUNC10(vdp1);

	j = 0;

	string = FUNC1(j);
	while(string && (j < MAX_VDP1_COMMAND)) {
		FUNC7(vdp1->store, &iter);
		FUNC8(vdp1->store, &iter, 0, string, -1);

		{
			u32 * icontext;
			int wtext, htext;
			int rowstride;
			GdkPixbuf * pixbuftext, * resized;
			float ratio;

			icontext = FUNC2(j, &wtext, &htext);

			if ((icontext != NULL) && (wtext > 0) && (htext > 0)) {
 				rowstride = wtext * 4;
 				rowstride += (rowstride % 4)? (4 - (rowstride % 4)): 0;
				pixbuftext = FUNC5((const guchar *) icontext, GDK_COLORSPACE_RGB, TRUE, 8,
					wtext, htext, rowstride, yui_texture_free, NULL);

				ratio = (float) 16 / htext;
				if (htext > 16) {
					resized = FUNC6(pixbuftext, wtext * ratio, 16, GDK_INTERP_BILINEAR);
				} else {
					resized = FUNC6(pixbuftext, wtext, htext, GDK_INTERP_BILINEAR);
				}

				FUNC8(vdp1->store, &iter, 1, resized, -1);

				FUNC3(pixbuftext);
				FUNC3(resized);
			}
		}

		j++;
		string = FUNC1(j);
	}

	FUNC0(vdp1->cursor, nameTemp);
	FUNC9(vdp1->buffer, FUNC4(nameTemp), -1);
	vdp1->texture = FUNC2(vdp1->cursor, &vdp1->w, &vdp1->h);
	FUNC11(vdp1);
}