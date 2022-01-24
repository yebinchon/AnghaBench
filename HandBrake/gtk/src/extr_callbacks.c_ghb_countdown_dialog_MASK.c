#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  guint ;
typedef  int /*<<< orphan*/  gint ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_6__ {int /*<<< orphan*/  dlg; TYPE_1__* ud; int /*<<< orphan*/  timeout; int /*<<< orphan*/  const* action; int /*<<< orphan*/  const* msg; } ;
typedef  TYPE_2__ countdown_t ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  scalar_t__ GtkResponseType ;
typedef  int /*<<< orphan*/  GtkMessageType ;
typedef  int /*<<< orphan*/  GSourceFunc ;
typedef  int /*<<< orphan*/  GSource ;
typedef  int /*<<< orphan*/  GMainContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GTK_BUTTONS_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_DIALOG_MODAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ GTK_RESPONSE_CANCEL ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

void
FUNC13(
    GtkMessageType type,
    const gchar *message,
    const gchar *action,
    const gchar *cancel,
    GSourceFunc action_func,
    signal_user_data_t *ud,
    gint timeout)
{
    GtkWindow *hb_window;
    GtkWidget *dialog;
    GtkResponseType response;
    guint timeout_id;
    countdown_t cd;

    cd.msg = message;
    cd.action = action;
    cd.timeout = timeout;
    cd.ud = ud;

    // Toss up a warning dialog
    hb_window = FUNC3(FUNC0(ud->builder, "hb_window"));
    dialog = FUNC11(hb_window, GTK_DIALOG_MODAL,
                            type, GTK_BUTTONS_NONE,
                            FUNC4("%s\n\n%s in %d seconds ..."),
                            message, action, timeout);
    FUNC9( FUNC1(dialog),
                           cancel, GTK_RESPONSE_CANCEL,
                           NULL);

    cd.dlg = FUNC2(dialog);
    timeout_id = FUNC8(1000, action_func, &cd);
    response = FUNC10(FUNC1(dialog));
    FUNC12 (dialog);
    if (response == GTK_RESPONSE_CANCEL)
    {
        GMainContext *mc;
        GSource *source;

        mc = FUNC5();
        source = FUNC6(mc, timeout_id);
        if (source != NULL)
            FUNC7(source);
    }
}