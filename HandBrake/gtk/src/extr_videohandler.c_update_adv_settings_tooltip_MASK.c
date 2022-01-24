#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
struct TYPE_8__ {scalar_t__* str; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  TYPE_2__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int HB_VCODEC_X264_MASK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,char const*,...) ; 
 char* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 char* FUNC15 (int /*<<< orphan*/ ,char const*,char*,char const*,char const*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char*) ; 
 scalar_t__ FUNC17 (char const*,char*) ; 
 int /*<<< orphan*/ * video_option_tooltip ; 

__attribute__((used)) static void
FUNC18(signal_user_data_t *ud)
{
    if (video_option_tooltip == NULL)
    {
        GtkWidget *eo = FUNC1(FUNC0(ud->builder, "VideoOptionExtra"));
        video_option_tooltip = FUNC12(eo);
    }

    int encoder = FUNC11(ud->settings);
    if (encoder & HB_VCODEC_X264_MASK)
    {
        GString *str = FUNC7("");
        const char *preset;
        const char *tune;
        const char *profile;
        const char *level;
        const char *opts;
        char *tunes;

        preset  = FUNC10(ud->settings, "VideoPreset");
        tune    = FUNC10(ud->settings, "VideoTune");
        profile = FUNC10(ud->settings, "VideoProfile");
        level   = FUNC10(ud->settings, "VideoLevel");
        opts    = FUNC10(ud->settings, "VideoOptionExtra");

        if (tune[0] && FUNC17(tune, "none"))
        {
            FUNC5(str, "%s", tune);
        }
        if (FUNC8(ud->settings, "x264FastDecode"))
        {
            FUNC5(str, "%s%s", str->str[0] ? "," : "", "fastdecode");
        }
        if (FUNC8(ud->settings, "x264ZeroLatency"))
        {
            FUNC5(str, "%s%s", str->str[0] ? "," : "", "zerolatency");
        }
        tunes = FUNC6(str, FALSE);

        char * new_opts;

        int w = FUNC9(ud->settings, "scale_width");
        int h = FUNC9(ud->settings, "scale_height");

        if (w == 0 || h == 0)
        {
            if (!FUNC8(ud->settings, "autoscale"))
            {
                w = FUNC9(ud->settings, "PictureWidth");
                h = FUNC9(ud->settings, "PictureHeight");

                if (h == 0 && w != 0)
                {
                    h = w * 9 / 16;
                }
                if (w == 0 && h != 0)
                {
                    w = h * 16 / 9;
                }
            }
            if (w == 0 || h == 0)
            {
                w = 1280;
                h = 720;
            }
        }

        if (!FUNC16(profile, "auto"))
        {
            profile = "";
        }
        if (!FUNC16(level, "auto"))
        {
            level = "";
        }
        new_opts = FUNC15(FUNC14(encoder),
                        preset, tunes, opts, profile, level, w, h);

        GtkWidget *eo = FUNC1(FUNC0(ud->builder, "VideoOptionExtra"));

        char * tt;
        if (new_opts)
            tt = FUNC4(FUNC2("%s\n\nExpanded Options:\n\"%s\""),
                                 video_option_tooltip, new_opts);
        else
            tt = FUNC4(FUNC2("%s\n\nExpanded Options:\n\"\""),
                                 video_option_tooltip);
        FUNC13(eo, tt);

        FUNC3(tt);
        FUNC3(new_opts);

        FUNC3(tunes);
    }
}