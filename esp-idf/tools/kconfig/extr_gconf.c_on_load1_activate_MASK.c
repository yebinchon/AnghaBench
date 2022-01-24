#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gpointer ;
struct TYPE_2__ {int /*<<< orphan*/  cancel_button; int /*<<< orphan*/  ok_button; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkMenuItem ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gtk_widget_destroy ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  load_filename ; 

void FUNC8(GtkMenuItem * menuitem, gpointer user_data)
{
	GtkWidget *fs;

	fs = FUNC6(FUNC3("Load file..."));
	FUNC4(FUNC1(FUNC0(fs)->ok_button),
			 "clicked",
			 FUNC2(load_filename), (gpointer) fs);
	FUNC5(FUNC1
				 (FUNC0(fs)->ok_button),
				 "clicked", FUNC2(gtk_widget_destroy),
				 (gpointer) fs);
	FUNC5(FUNC1
				 (FUNC0(fs)->cancel_button),
				 "clicked", FUNC2(gtk_widget_destroy),
				 (gpointer) fs);
	FUNC7(fs);
}