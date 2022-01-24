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
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_SHADOW_IN ; 
 int /*<<< orphan*/  GTK_SHADOW_OUT ; 
 int /*<<< orphan*/  GTK_WINDOW_TOPLEVEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cb_delete ; 
 int /*<<< orphan*/  create_thread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int*,char***) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/ * FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int /*<<< orphan*/  pulse_bar ; 

int FUNC27(int argc, char **argv)
{
  GtkWidget *top_window, *outside_frame, *inside_frame, *progress_bar;

  /* Must initialize libcurl before any threads are started */
  FUNC6(CURL_GLOBAL_ALL);

  /* Init thread */
  FUNC10(NULL);
  FUNC14();
  FUNC13();

  FUNC20(&argc, &argv);

  /* Base window */
  top_window = FUNC25(GTK_WINDOW_TOPLEVEL);

  /* Frame */
  outside_frame = FUNC18(NULL);
  FUNC19(FUNC2(outside_frame), GTK_SHADOW_OUT);
  FUNC16(FUNC1(top_window), outside_frame);

  /* Frame */
  inside_frame = FUNC18(NULL);
  FUNC19(FUNC2(inside_frame), GTK_SHADOW_IN);
  FUNC17(FUNC1(inside_frame), 5);
  FUNC16(FUNC1(outside_frame), inside_frame);

  /* Progress bar */
  progress_bar = FUNC22();
  FUNC23(FUNC3 (progress_bar));
  /* Make uniform pulsing */
  gint pulse_ref = FUNC11(300, pulse_bar, progress_bar);
  FUNC7(FUNC5(progress_bar), "pulse_id",
                    FUNC0(pulse_ref));
  FUNC16(FUNC1(inside_frame), progress_bar);

  FUNC24(top_window);
  FUNC26("gtk_widget_show_all\n");

  FUNC8(FUNC5 (top_window), "delete-event",
                   FUNC4(cb_delete), NULL);

  if(!(FUNC9(&create_thread, progress_bar, FALSE, NULL) != 0))
    FUNC12("can't create the thread");

  FUNC21();
  FUNC15();
  FUNC26("gdk_threads_leave\n");

  return 0;
}