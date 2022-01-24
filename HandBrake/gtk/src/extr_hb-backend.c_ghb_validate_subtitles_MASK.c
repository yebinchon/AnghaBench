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
typedef  int /*<<< orphan*/  hb_title_t ;
struct TYPE_3__ {int format; } ;
typedef  TYPE_1__ hb_container_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  const GhbValue ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  GTK_MESSAGE_WARNING ; 
 int /*<<< orphan*/  G_FILE_TEST_IS_REGULAR ; 
 int HB_MUX_MASK_WEBM ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC7 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,char*) ; 
 void* FUNC10 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  const* FUNC11 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC12 (char const*) ; 
 int /*<<< orphan*/ * FUNC13 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

gboolean
FUNC15(GhbValue *settings, GtkWindow *parent)
{
    gint title_id, titleindex;
    const hb_title_t * title;
    gchar *message;

    title_id = FUNC9(settings, "title");
    title = FUNC13(title_id, &titleindex);
    if (title == NULL)
    {
        /* No valid title, stop right there */
        FUNC3(FUNC0("No title found.\n"));
        return FALSE;
    }

    const GhbValue *slist, *subtitle, *import;
    gint count, ii, track;
    gboolean burned, one_burned = FALSE;

    const char *mux_id;
    const hb_container_t *mux;

    mux_id = FUNC10(settings, "FileFormat");
    mux = FUNC12(mux_id);

    slist = FUNC11(settings);
    count = FUNC6(slist);
    for (ii = 0; ii < count; ii++)
    {
        subtitle = FUNC5(slist, ii);
        track = FUNC9(subtitle, "Track");
        import = FUNC7(subtitle, "Import");
        burned = track != -1 && FUNC8(subtitle, "Burn");
        if (burned && one_burned)
        {
            // MP4 can only handle burned vobsubs.  make sure there isn't
            // already something burned in the list
            message = FUNC4(
            FUNC0("Only one subtitle may be burned into the video.\n\n"
                "You should change your subtitle selections.\n"
                "If you continue, some subtitles will be lost."));
            if (!FUNC14(parent, GTK_MESSAGE_WARNING,
                                    message, FUNC0("Cancel"), FUNC0("Continue")))
            {
                FUNC2(message);
                return FALSE;
            }
            FUNC2(message);
            break;
        }
        else if (burned)
        {
            one_burned = TRUE;
        }
        else if (mux->format & HB_MUX_MASK_WEBM)
        {
            // WebM can only handle burned subs afaik. Their specs are ambiguous here
            message = FUNC4(
            FUNC0("WebM in HandBrake only supports burned subtitles.\n\n"
                "You should change your subtitle selections.\n"
                "If you continue, some subtitles will be lost."));
            if (!FUNC14(parent, GTK_MESSAGE_WARNING,
                                    message, FUNC0("Cancel"), FUNC0("Continue")))
            {
                FUNC2(message);
                return FALSE;
            }
            FUNC2(message);
            break;
        }
        if (import != NULL)
        {
            const gchar *filename;

            filename = FUNC10(import, "Filename");
            if (!FUNC1(filename, G_FILE_TEST_IS_REGULAR))
            {
                message = FUNC4(
                FUNC0("SRT file does not exist or not a regular file.\n\n"
                    "You should choose a valid file.\n"
                    "If you continue, this subtitle will be ignored."));
                if (!FUNC14(parent, GTK_MESSAGE_WARNING, message,
                    FUNC0("Cancel"), FUNC0("Continue")))
                {
                    FUNC2(message);
                    return FALSE;
                }
                FUNC2(message);
                break;
            }
        }
    }
    return TRUE;
}