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
struct TYPE_3__ {int /*<<< orphan*/  queue; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  hb_title_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  const gchar ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  GTK_MESSAGE_ERROR ; 
 int /*<<< orphan*/  GTK_MESSAGE_QUESTION ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_FILE_TEST_EXISTS ; 
 int /*<<< orphan*/  G_FILE_TEST_IS_DIR ; 
 int R_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int W_OK ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  const* FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static gboolean
FUNC21(signal_user_data_t *ud, GhbValue *settings, gint batch)
{
    // Check to see if the dest file exists or is
    // already in the queue
    gchar *message;
    const gchar *dest;
    gint count, ii;
    gint title_id, titleindex;
    const hb_title_t *title;
    GtkWindow *hb_window;

    hb_window = FUNC1(FUNC0(ud->builder, "hb_window"));

    title_id = FUNC12(settings, "title");
    title = FUNC14(title_id, &titleindex);
    if (title == NULL) return FALSE;
    dest = FUNC13(settings, "destination");
    count = FUNC10(ud->queue);
    for (ii = 0; ii < count; ii++)
    {
        GhbValue *queueDict, *uiDict;
        const gchar *filename;

        queueDict = FUNC9(ud->queue, ii);
        uiDict = FUNC11(queueDict, "uiSettings");
        filename = FUNC13(uiDict, "destination");
        if (FUNC20(dest, filename) == 0)
        {
            message = FUNC7(
                        FUNC2("Destination: %s\n\n"
                        "Another queued job has specified the same destination.\n"
                        "Do you want to overwrite?"),
                        dest);
            if (!FUNC15(hb_window, GTK_MESSAGE_QUESTION,
                                    message, FUNC2("Cancel"), FUNC2("Overwrite")))
            {
                FUNC5(message);
                return FALSE;
            }
            FUNC5(message);
            break;
        }
    }
    gchar *destdir = FUNC6(dest);
    if (!FUNC4(destdir, G_FILE_TEST_IS_DIR))
    {
        message = FUNC7(
                    FUNC2("Destination: %s\n\n"
                    "This is not a valid directory."),
                    destdir);
        FUNC15(hb_window, GTK_MESSAGE_ERROR,
                           message, FUNC2("Cancel"), NULL);
        FUNC5(message);
        FUNC5(destdir);
        return FALSE;
    }
#if !defined(_WIN32)
    // This doesn't work properly on windows
    if (FUNC3(destdir, R_OK|W_OK) != 0)
    {
        message = FUNC7(
                    FUNC2("Destination: %s\n\n"
                    "Can not read or write the directory."),
                    destdir);
        FUNC15(hb_window, GTK_MESSAGE_ERROR,
                           message, FUNC2("Cancel"), NULL);
        FUNC5(message);
        FUNC5(destdir);
        return FALSE;
    }
#endif
    FUNC5(destdir);
    if (FUNC4(dest, G_FILE_TEST_EXISTS))
    {
        message = FUNC7(
                    FUNC2("Destination: %s\n\n"
                    "File already exists.\n"
                    "Do you want to overwrite?"),
                    dest);
        if (!FUNC15(hb_window, GTK_MESSAGE_QUESTION,
                                message, FUNC2("Cancel"), FUNC2("Overwrite")))
        {
            FUNC5(message);
            return FALSE;
        }
        FUNC5(message);
        FUNC8(dest);
    }
    // Validate audio settings
    if (!FUNC16(settings, hb_window))
    {
        return FALSE;
    }
    // Validate audio settings
    if (!FUNC18(settings, hb_window))
    {
        return FALSE;
    }
    // Validate video settings
    if (!FUNC19(settings, hb_window))
    {
        return FALSE;
    }
    // Validate filter settings
    if (!FUNC17(settings, hb_window))
    {
        return FALSE;
    }
    return TRUE;
}