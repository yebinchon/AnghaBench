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
struct TYPE_3__ {int /*<<< orphan*/  cancel_encode; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  scalar_t__ GtkResponseType ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GHB_CANCEL_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GTK_BUTTONS_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_DIALOG_MODAL ; 
 int /*<<< orphan*/  GTK_MESSAGE_WARNING ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

gboolean
FUNC9(signal_user_data_t *ud, const gchar *extra_msg)
{
    GtkWindow *hb_window;
    GtkWidget *dialog;
    GtkResponseType response;

    if (extra_msg == NULL) extra_msg = "";
    // Toss up a warning dialog
    hb_window = FUNC2(FUNC0(ud->builder, "hb_window"));
    dialog = FUNC7(hb_window, GTK_DIALOG_MODAL,
                GTK_MESSAGE_WARNING, GTK_BUTTONS_NONE,
                FUNC3("%sYour movie will be lost if you don't continue encoding."),
                extra_msg);
    FUNC5( FUNC1(dialog),
                           FUNC3("Cancel Current and Stop"), 1,
                           FUNC3("Continue Encoding"), 4,
                           NULL);
    response = FUNC6(FUNC1(dialog));
    FUNC8 (dialog);
    switch ((int)response)
    {
        case 1:
            FUNC4();
            ud->cancel_encode = GHB_CANCEL_ALL;
            return TRUE;
        case 4:
        default:
            break;
    }
    return FALSE;
}