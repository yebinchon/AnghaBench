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
typedef  scalar_t__ guint ;
typedef  int /*<<< orphan*/  gsize ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_3__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkBuilder ;
typedef  int /*<<< orphan*/  GResource ;
typedef  TYPE_1__ GError ;
typedef  int /*<<< orphan*/  GBytes ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  GTK_BUTTONS_CLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_DIALOG_MODAL ; 
 int /*<<< orphan*/  GTK_MESSAGE_ERROR ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,TYPE_1__**) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

GtkBuilder*
FUNC13(const gchar * name)
{
    guint res = 0;
    GError *error = NULL;
    const gchar *ghb_ui;
    gsize data_size;

    GResource *ui_res = FUNC7();
    GBytes *gbytes = FUNC5(ui_res,
                                            "/fr/handbrake/ghb/ui/ghb.ui",
                                            0, NULL);
    ghb_ui = FUNC3(gbytes, &data_size);

    const gchar *markup =
        FUNC1("<b><big>Unable to create %s.</big></b>\n"
        "\n"
        "Internal error. Could not parse UI description.\n"
        "%s");
    FUNC4("create_builder_or_die()\n");
    GtkBuilder *xml = FUNC9();
    if (xml != NULL)
        res = FUNC8(xml, ghb_ui, -1, &error);
    if (!xml || !res)
    {
        GtkWidget *dialog = FUNC11(NULL,
            GTK_DIALOG_MODAL,
            GTK_MESSAGE_ERROR,
            GTK_BUTTONS_CLOSE,
            FUNC6(markup),
            name, error->message);
        FUNC10(FUNC0(dialog));
        FUNC12(dialog);
        FUNC2(EXIT_FAILURE);
    }
    return xml;
}