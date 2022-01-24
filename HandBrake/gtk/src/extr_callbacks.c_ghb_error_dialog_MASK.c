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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkMessageType ;

/* Variables and functions */
 int /*<<< orphan*/  GTK_BUTTONS_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_DIALOG_MODAL ; 
 int /*<<< orphan*/  GTK_RESPONSE_CANCEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(GtkWindow *parent, GtkMessageType type, const gchar *message, const gchar *cancel)
{
    GtkWidget *dialog;

    // Toss up a warning dialog
    dialog = FUNC3(parent, GTK_DIALOG_MODAL,
                            type, GTK_BUTTONS_NONE,
                            "%s", message);
    FUNC1( FUNC0(dialog),
                           cancel, GTK_RESPONSE_CANCEL, NULL);
    FUNC2(FUNC0(dialog));
    FUNC4 (dialog);
}