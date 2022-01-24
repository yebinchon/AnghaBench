#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  mode; struct TYPE_23__* to_entry; struct TYPE_23__* to_label; struct TYPE_23__* transfer_button; struct TYPE_23__* from_entry; struct TYPE_23__* file_entry; } ;
typedef  TYPE_1__ YuiTransfer ;
typedef  TYPE_1__ GtkWidget ;
typedef  int /*<<< orphan*/  GSList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GTK_CAN_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  YUI_TRANSFER_LOAD_EXEC ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (char*) ; 
 void* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 void* FUNC17 () ; 
 TYPE_1__* FUNC18 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC19 () ; 
 void* FUNC20 (char const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC24 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gtk_widget_destroy ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC30 (char const*) ; 
 int /*<<< orphan*/  yui_transfer_browse ; 
 int /*<<< orphan*/  yui_transfer_check ; 
 int /*<<< orphan*/  yui_transfer_exec ; 
 int /*<<< orphan*/  yui_transfer_load ; 
 int /*<<< orphan*/  yui_transfer_load_exec ; 
 int /*<<< orphan*/  yui_transfer_store ; 

__attribute__((used)) static void FUNC31 (YuiTransfer * yt) {
  GtkWidget *vbox1;
  GtkWidget *hbox1;
  GtkWidget *label4;
  GtkWidget *button1;
  GtkWidget *hbox2;
  GtkWidget *label2;
  GtkWidget *hbuttonbox1;
  GtkWidget *button5;
  GtkWidget *hbox3;
  GSList *radiobutton1_group = NULL;
  GtkWidget *radiobutton1;
  GtkWidget *radiobutton2;
  GtkWidget *radiobutton3;
  const char * tmp;

  FUNC29 (FUNC7 (yt), FUNC9("File transfer"));

  vbox1 = FUNC26 (FALSE, 0);
  FUNC15 (FUNC1 (yt), vbox1);

  hbox1 = FUNC18 (FALSE, 10);
  FUNC12 (FUNC0 (vbox1), hbox1, FALSE, TRUE, 0);
  FUNC16 (FUNC1 (hbox1), 10);

  tmp = FUNC9("File");
  label4 = FUNC20 (tmp);
  FUNC12 (FUNC0 (hbox1), label4, FALSE, FALSE, 0);
  FUNC22 (FUNC3 (label4), 0, 0.5);
  FUNC21 (FUNC2 (label4), FUNC30(tmp));

  yt->file_entry = FUNC17 ();
  FUNC11(yt->file_entry, "changed", FUNC8(yui_transfer_check), yt);
  FUNC12 (FUNC0 (hbox1), yt->file_entry, TRUE, TRUE, 0);

  button1 = FUNC14 (FUNC9("Browse"));
  FUNC10(button1, "clicked", FUNC8(yui_transfer_browse), yt->file_entry);
  FUNC12 (FUNC0 (hbox1), button1, FALSE, FALSE, 0);

  hbox3 = FUNC18 (FALSE, 10);
  FUNC12 (FUNC0 (vbox1), hbox3, FALSE, FALSE, 0);
  FUNC16 (FUNC1 (hbox3), 10);

  radiobutton1 = FUNC24 (NULL, FUNC9("Load as executable"));
  FUNC10(radiobutton1, "toggled", FUNC8(yui_transfer_load_exec), yt);
  FUNC12 (FUNC0 (hbox3), radiobutton1, FALSE, FALSE, 0);
  FUNC25 (FUNC4 (radiobutton1), radiobutton1_group);
  radiobutton1_group = FUNC23 (FUNC4 (radiobutton1));

  radiobutton2 = FUNC24 (NULL, FUNC9("Load"));
  FUNC10(radiobutton2, "toggled", FUNC8(yui_transfer_load), yt);
  FUNC12 (FUNC0 (hbox3), radiobutton2, FALSE, FALSE, 0);
  FUNC25 (FUNC4 (radiobutton2), radiobutton1_group);
  radiobutton1_group = FUNC23 (FUNC4 (radiobutton2));

  radiobutton3 = FUNC24 (NULL, FUNC9("Store"));
  FUNC10(radiobutton3, "toggled", FUNC8(yui_transfer_store), yt);
  FUNC12 (FUNC0 (hbox3), radiobutton3, FALSE, FALSE, 0);
  FUNC25 (FUNC4 (radiobutton3), radiobutton1_group);
  radiobutton1_group = FUNC23 (FUNC4 (radiobutton3));

  hbox2 = FUNC18 (FALSE, 10);
  FUNC12 (FUNC0 (vbox1), hbox2, FALSE, TRUE, 0);
  FUNC16 (FUNC1 (hbox2), 10);

  tmp = FUNC9("From");
  label2 = FUNC20 (tmp);
  FUNC12 (FUNC0 (hbox2), label2, FALSE, FALSE, 0);
  FUNC22 (FUNC3 (label2), 0, 0.5);
  FUNC21 (FUNC2 (label2), FUNC30(tmp));

  yt->from_entry = FUNC17 ();
  FUNC11(yt->from_entry, "changed", FUNC8(yui_transfer_check), yt);
  FUNC12 (FUNC0 (hbox2), yt->from_entry, TRUE, TRUE, 0);

  tmp = FUNC9("To");
  yt->to_label = FUNC20 (tmp);
  FUNC12 (FUNC0 (hbox2), yt->to_label, FALSE, FALSE, 0);
  FUNC22 (FUNC3 (yt->to_label), 0, 0.5);
  FUNC21 (FUNC2 (yt->to_label), FUNC30(tmp));

  yt->to_entry = FUNC17 ();
  FUNC11(yt->to_entry, "changed", FUNC8(yui_transfer_check), yt);
  FUNC12 (FUNC0 (hbox2), yt->to_entry, TRUE, TRUE, 0);

  hbuttonbox1 = FUNC19 ();
  FUNC12 (FUNC0 (vbox1), hbuttonbox1, FALSE, TRUE, 0);
  FUNC16 (FUNC1 (hbuttonbox1), 10);

  yt->transfer_button = FUNC14 (FUNC9("Transfer"));
  FUNC15 (FUNC1 (hbuttonbox1), yt->transfer_button);
  FUNC10(yt->transfer_button, "clicked", FUNC8(yui_transfer_exec), yt);
  FUNC6 (yt->transfer_button, GTK_CAN_DEFAULT);

  button5 = FUNC13 ("gtk-cancel");
  FUNC15 (FUNC1 (hbuttonbox1), button5);
  FUNC11(button5, "clicked", FUNC8(gtk_widget_destroy), yt);
  FUNC6 (button5, GTK_CAN_DEFAULT);

  FUNC28 (FUNC5(yt));

	FUNC27(FUNC5(yt->to_label), FALSE);
	FUNC27(FUNC5(yt->to_entry), FALSE);

  yt->mode = YUI_TRANSFER_LOAD_EXEC;

}