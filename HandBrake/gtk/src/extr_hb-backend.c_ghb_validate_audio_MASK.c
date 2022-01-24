#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  list_audio; } ;
typedef  TYPE_2__ hb_title_t ;
struct TYPE_10__ {int format; } ;
typedef  TYPE_3__ hb_container_t ;
struct TYPE_8__ {int codec; } ;
struct TYPE_11__ {TYPE_1__ in; } ;
typedef  TYPE_4__ hb_audio_config_t ;
typedef  scalar_t__ gint ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GTK_MESSAGE_WARNING ; 
 int HB_ACODEC_AC3 ; 
 int HB_ACODEC_DCA ; 
 int HB_ACODEC_FFAAC ; 
 int HB_ACODEC_LAME ; 
 int HB_ACODEC_MASK ; 
 int HB_ACODEC_OPUS ; 
 int HB_ACODEC_VORBIS ; 
 int HB_MUX_MASK_MKV ; 
 int HB_MUX_MASK_MP4 ; 
 int HB_MUX_MASK_WEBM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 void* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (char const*) ; 
 TYPE_2__* FUNC13 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int FUNC16 (int) ; 
 void* FUNC17 (int) ; 
 TYPE_4__* FUNC18 (int /*<<< orphan*/ ,int) ; 

gboolean
FUNC19(GhbValue *settings, GtkWindow *parent)
{
    gint title_id, titleindex;
    const hb_title_t * title;
    gchar *message;

    title_id = FUNC8(settings, "title");
    title = FUNC13(title_id, &titleindex);
    if (title == NULL)
    {
        /* No valid title, stop right there */
        FUNC2(FUNC0("No title found.\n"));
        return FALSE;
    }

    const char *mux_id;
    const hb_container_t *mux;

    mux_id = FUNC9(settings, "FileFormat");
    mux = FUNC12(mux_id);

    const GhbValue *audio_list;
    gint count, ii;

    audio_list = FUNC11(settings);
    count = FUNC5(audio_list);
    for (ii = 0; ii < count; ii++)
    {
        GhbValue *asettings;
        hb_audio_config_t *aconfig;
        int track, codec;

        asettings = FUNC4(audio_list, ii);
        track = FUNC8(asettings, "Track");
        codec = FUNC15(asettings, "Encoder");

        aconfig = FUNC18(title->list_audio, track);
        if (FUNC7(codec) &&
            !(FUNC6(aconfig->in.codec) &&
              (aconfig->in.codec & codec)))
        {
            // Not supported.  AC3 is passthrough only, so input must be AC3
            message = FUNC3(
                        FUNC0("The source does not support Pass-Thru.\n\n"
                        "You should choose a different audio codec.\n"
                        "If you continue, one will be chosen for you."));
            if (!FUNC14(parent, GTK_MESSAGE_WARNING,
                                    message, FUNC0("Cancel"), FUNC0("Continue")))
            {
                FUNC1(message);
                return FALSE;
            }
            FUNC1(message);
            if ((codec & HB_ACODEC_AC3) ||
                (aconfig->in.codec & HB_ACODEC_MASK) == HB_ACODEC_DCA)
            {
                codec = HB_ACODEC_AC3;
            }
            else if (mux->format & HB_MUX_MASK_MKV)
            {
                codec = HB_ACODEC_LAME;
            }
            else if (mux->format & HB_MUX_MASK_WEBM)
            {
                codec = FUNC16(mux->format);
            }
            else
            {
                codec = HB_ACODEC_FFAAC;
            }
            const char *name = FUNC17(codec);
            FUNC10(asettings, "Encoder", name);
        }
        const gchar *a_unsup = NULL;
        const gchar *mux_s = NULL;
        if (mux->format & HB_MUX_MASK_MP4)
        {
            mux_s = "MP4";
            // mp4/vorbis|DTS combination is not supported.
            if (codec == HB_ACODEC_VORBIS)
            {
                a_unsup = "Vorbis";
                codec = HB_ACODEC_FFAAC;
            }
        }
        if (mux->format & HB_MUX_MASK_WEBM)
        {
            mux_s = "WebM";
            // WebM only supports Vorbis and Opus codecs
            if (codec != HB_ACODEC_VORBIS && codec != HB_ACODEC_OPUS)
            {
                a_unsup = FUNC17(codec);
                codec = FUNC16(mux->format);
            }
        }
        if (a_unsup)
        {
            message = FUNC3(
                        FUNC0("%s is not supported in the %s container.\n\n"
                        "You should choose a different audio codec.\n"
                        "If you continue, one will be chosen for you."), a_unsup, mux_s);
            if (!FUNC14(parent, GTK_MESSAGE_WARNING,
                                    message, FUNC0("Cancel"), FUNC0("Continue")))
            {
                FUNC1(message);
                return FALSE;
            }
            FUNC1(message);
            const char *name = FUNC17(codec);
            FUNC10(asettings, "Encoder", name);
        }
    }
    return TRUE;
}