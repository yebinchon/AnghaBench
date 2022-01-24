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
typedef  int gint ;
struct TYPE_3__ {int w; int /*<<< orphan*/  pixbuf; } ;
typedef  TYPE_1__ YuiViewer ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_FILE_CHOOSER_ACTION_SAVE ; 
#define  GTK_RESPONSE_ACCEPT 129 
#define  GTK_RESPONSE_CANCEL 128 
 int /*<<< orphan*/  GTK_STOCK_CANCEL ; 
 int /*<<< orphan*/  GTK_STOCK_SAVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(YuiViewer * yv) {
        GtkWidget * file_selector;
        gint result;
	char * filename;
	int rowstride;

        file_selector = FUNC4 ("Please choose a file", NULL, GTK_FILE_CHOOSER_ACTION_SAVE,
                        GTK_STOCK_CANCEL, GTK_RESPONSE_CANCEL, GTK_STOCK_SAVE, GTK_RESPONSE_ACCEPT, NULL);

        FUNC7(file_selector);

        result = FUNC3(FUNC0(file_selector));

        switch(result) {
                case GTK_RESPONSE_ACCEPT:
			rowstride = yv->w * 4;
			rowstride += (rowstride % 4)? (4 - (rowstride % 4)): 0;
			filename = FUNC5(FUNC1(file_selector));

			FUNC2(yv->pixbuf, filename, "png", NULL, NULL);

                        break;
                case GTK_RESPONSE_CANCEL:
                        break;
        }

        FUNC6(file_selector);
}