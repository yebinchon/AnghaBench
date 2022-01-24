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
struct TYPE_3__ {int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  hb_title_t ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(signal_user_data_t *ud)
{
    gint hh, mm, ss;
    gint64 duration;
    gchar *text;
    GtkWidget *widget;
    int title_id, titleindex;
    const hb_title_t *title;

    title_id = FUNC5(ud->settings, "title");
    title = FUNC6(title_id, &titleindex);
    widget = FUNC0 (ud->builder, "title_duration");

    duration = FUNC7(ud->settings, title);
    FUNC4(duration, &hh, &mm, &ss);

    text = FUNC3("%02d:%02d:%02d", hh, mm, ss);
    FUNC8(FUNC1(widget), text);
    FUNC2(text);
}