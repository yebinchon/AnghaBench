#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_9__ {int /*<<< orphan*/  window; } ;
struct TYPE_8__ {TYPE_1__* prompt; } ;
struct TYPE_7__ {int /*<<< orphan*/  text; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkTextBuffer ;
typedef  int /*<<< orphan*/  GtkStyle ;
typedef  int /*<<< orphan*/  GtkCheckMenuItem ;
typedef  int /*<<< orphan*/  GladeXML ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  PANGO_WEIGHT_BOLD ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* back_btn ; 
 int /*<<< orphan*/  conf_changed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC9 (int /*<<< orphan*/ *,char*,char*,...) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* hpaned ; 
 TYPE_3__* main_wnd ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 TYPE_2__ rootmenu ; 
 void* save_btn ; 
 void* save_menu_item ; 
 int /*<<< orphan*/  show_name ; 
 int /*<<< orphan*/  show_range ; 
 int /*<<< orphan*/  show_value ; 
 void* tag1 ; 
 void* tag2 ; 
 void* text_w ; 
 void* tree1_w ; 
 void* tree2_w ; 
 void* vpaned ; 
 scalar_t__ xpm_single_view ; 
 scalar_t__ xpm_split_view ; 
 scalar_t__ xpm_tree_view ; 

void FUNC16(const gchar * glade_file)
{
	GladeXML *xml;
	GtkWidget *widget;
	GtkTextBuffer *txtbuf;
	GtkStyle *style;

	xml = FUNC6(glade_file, "window1", NULL);
	if (!xml)
		FUNC4(FUNC2("GUI loading failed !\n"));
	FUNC7(xml);

	main_wnd = FUNC5(xml, "window1");
	hpaned = FUNC5(xml, "hpaned1");
	vpaned = FUNC5(xml, "vpaned1");
	tree1_w = FUNC5(xml, "treeview1");
	tree2_w = FUNC5(xml, "treeview2");
	text_w = FUNC5(xml, "textview3");

	back_btn = FUNC5(xml, "button1");
	FUNC12(back_btn, FALSE);

	widget = FUNC5(xml, "show_name1");
	FUNC8((GtkCheckMenuItem *) widget,
				       show_name);

	widget = FUNC5(xml, "show_range1");
	FUNC8((GtkCheckMenuItem *) widget,
				       show_range);

	widget = FUNC5(xml, "show_data1");
	FUNC8((GtkCheckMenuItem *) widget,
				       show_value);

	save_btn = FUNC5(xml, "button3");
	save_menu_item = FUNC5(xml, "save1");
	FUNC3(conf_changed);

	style = FUNC11(main_wnd);
	widget = FUNC5(xml, "toolbar1");

	FUNC15(xml, main_wnd->window, style,
			    "button4", (gchar **) xpm_single_view);
	FUNC15(xml, main_wnd->window, style,
			    "button5", (gchar **) xpm_split_view);
	FUNC15(xml, main_wnd->window, style,
			    "button6", (gchar **) xpm_tree_view);

	txtbuf = FUNC10(FUNC0(text_w));
	tag1 = FUNC9(txtbuf, "mytag1",
					  "foreground", "red",
					  "weight", PANGO_WEIGHT_BOLD,
					  NULL);
	tag2 = FUNC9(txtbuf, "mytag2",
					  /*"style", PANGO_STYLE_OBLIQUE, */
					  NULL);

	FUNC14(FUNC1(main_wnd), rootmenu.prompt->text);

	FUNC13(main_wnd);
}