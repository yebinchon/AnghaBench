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
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  PangoAttribute ;
typedef  int /*<<< orphan*/  PangoAttrList ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * default_title_attrs ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 

__attribute__((used)) static void
FUNC8(GtkWidget *row, gboolean sensitive)
{
    GtkWidget *widget;
    widget = FUNC1(row, "title_selected");
    FUNC4(widget, sensitive);

    widget = FUNC1(row, "title_label");
    if (!sensitive)
    {
        PangoAttrList *pal;
        PangoAttribute *bg;
        bg = FUNC5(0xFFFF, 0xFFFF, 0xA000);
        pal = FUNC7();
        FUNC6(pal, bg);
        FUNC2(FUNC0(widget), pal);
        FUNC3(widget, TRUE);
    }
    else
    {
        FUNC2(FUNC0(widget), default_title_attrs);
        FUNC3(widget, FALSE);
    }
}