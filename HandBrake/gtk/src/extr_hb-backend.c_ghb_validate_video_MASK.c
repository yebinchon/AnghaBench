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
struct TYPE_3__ {int format; } ;
typedef  TYPE_1__ hb_container_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GTK_MESSAGE_WARNING ; 
 int HB_MUX_MASK_MP4 ; 
 int HB_MUX_MASK_WEBM ; 
 scalar_t__ HB_VCODEC_FFMPEG_VP8 ; 
 scalar_t__ HB_VCODEC_FFMPEG_VP9 ; 
 scalar_t__ HB_VCODEC_THEORA ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

gboolean
FUNC10(GhbValue *settings, GtkWindow *parent)
{
    gint vcodec;
    gchar *message;
    const char *mux_id;
    const hb_container_t *mux;

    mux_id = FUNC3(settings, "FileFormat");
    mux = FUNC5(mux_id);

    gboolean v_unsup = FALSE;

    vcodec = FUNC7(settings, "VideoEncoder");
    if ((mux->format & HB_MUX_MASK_MP4) && (vcodec == HB_VCODEC_THEORA))
    {
        // mp4/theora combination is not supported.
        message = FUNC2(
                    FUNC0("Theora is not supported in the MP4 container.\n\n"
                    "You should choose a different video codec or container.\n"
                    "If you continue, FFMPEG will be chosen for you."));
        v_unsup = TRUE;
    }
    else if ((mux->format & HB_MUX_MASK_WEBM) &&
             (vcodec != HB_VCODEC_FFMPEG_VP8 && vcodec != HB_VCODEC_FFMPEG_VP9))
    {
        // webm only supports vp8 and vp9.
        message = FUNC2(
                    FUNC0("Only VP8 or VP9 is supported in the WebM container.\n\n"
                    "You should choose a different video codec or container.\n"
                    "If you continue, one will be chosen for you."));
        v_unsup = TRUE;
    }

    if (v_unsup)
    {
        if (!FUNC6(parent, GTK_MESSAGE_WARNING,
                                message, FUNC0("Cancel"), FUNC0("Continue")))
        {
            FUNC1(message);
            return FALSE;
        }
        FUNC1(message);
        vcodec = FUNC8(mux->format);
        FUNC4(settings, "VideoEncoder",
                                FUNC9(vcodec));
    }

    return TRUE;
}