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
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkAdjustment ;

/* Variables and functions */
 int /*<<< orphan*/ * Bar ; 
 int /*<<< orphan*/  CURL_GLOBAL_ALL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_SHADOW_IN ; 
 int /*<<< orphan*/  GTK_SHADOW_OUT ; 
 int /*<<< orphan*/  GTK_WINDOW_TOPLEVEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int*,char***) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_thread ; 

int FUNC18(int argc, char **argv)
{
  GtkWidget *Window, *Frame, *Frame2;
  GtkAdjustment *adj;

  /* Must initialize libcurl before any threads are started */
  FUNC2(CURL_GLOBAL_ALL);

  /* Init thread */
  FUNC4(NULL);

  FUNC13(&argc, &argv);
  Window = FUNC17(GTK_WINDOW_TOPLEVEL);
  Frame = FUNC11(NULL);
  FUNC12(FUNC1(Frame), GTK_SHADOW_OUT);
  FUNC9(FUNC0(Window), Frame);
  Frame2 = FUNC11(NULL);
  FUNC12(FUNC1(Frame2), GTK_SHADOW_IN);
  FUNC9(FUNC0(Frame), Frame2);
  FUNC10(FUNC0(Frame2), 5);
  adj = (GtkAdjustment*)FUNC8(0, 0, 100, 0, 0, 0);
  Bar = FUNC15(adj);
  FUNC9(FUNC0(Frame2), Bar);
  FUNC16(Window);

  if(!(FUNC3(&my_thread, argv[1], FALSE, NULL) != 0))
    FUNC5("can't create the thread");


  FUNC6();
  FUNC14();
  FUNC7();
  return 0;
}