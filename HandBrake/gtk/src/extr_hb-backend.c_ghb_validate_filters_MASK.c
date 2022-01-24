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
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GTK_MESSAGE_ERROR ; 
 int HB_FILTER_COMB_DETECT ; 
 int HB_FILTER_DETELECINE ; 
 int HB_FILTER_INVALID ; 
 int HB_FILTER_NLMEANS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int,char const*,char const*,char const*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

gboolean
FUNC8(GhbValue *settings, GtkWindow *parent)
{
    gchar *message;

    // Detelecine
    const char *detel_preset;
    detel_preset = FUNC3(settings, "PictureDetelecine");
    if (FUNC7(detel_preset, "off"))
    {
        const char *detel_custom = NULL;
        int filter_id;

        filter_id = HB_FILTER_DETELECINE;
        detel_custom = FUNC3(settings, "PictureDetelecineCustom");
        if (FUNC6(filter_id, detel_preset, NULL,
                                      detel_custom))
        {
            if (detel_custom != NULL)
            {
                message = FUNC2(
                            FUNC0("Invalid Detelecine Settings:\n\n"
                              "Preset:\t%s\n"
                              "Custom:\t%s\n"), detel_preset, detel_custom);
            }
            else
            {
                message = FUNC2(
                            FUNC0("Invalid Detelecine Settings:\n\n"
                              "Preset:\t%s\n"), detel_preset);
            }
            FUNC4(parent, GTK_MESSAGE_ERROR,
                               message, FUNC0("Cancel"), NULL);
            FUNC1(message);
            return FALSE;
        }
    }

    // Comb Detect
    const char *comb_preset;
    comb_preset = FUNC3(settings, "PictureCombDetectPreset");
    if (FUNC7(comb_preset, "off"))
    {
        const char *comb_custom = NULL;
        int filter_id;

        filter_id = HB_FILTER_COMB_DETECT;
        comb_custom = FUNC3(settings, "PictureCombDetectCustom");
        if (FUNC6(filter_id, comb_preset, NULL,
                                      comb_custom))
        {
            if (comb_custom != NULL && comb_custom[0] != 0)
            {
                message = FUNC2(
                            FUNC0("Invalid Comb Detect Settings:\n\n"
                              "Preset:\t%s\n"
                              "Custom:\t%s\n"), comb_preset, comb_custom);
            }
            else
            {
                message = FUNC2(
                            FUNC0("Invalid Comb Detect Settings:\n\n"
                              "Preset:\t%s\n"), comb_preset);
            }
            FUNC4(parent, GTK_MESSAGE_ERROR,
                               message, FUNC0("Cancel"), NULL);
            FUNC1(message);
            return FALSE;
        }
    }

    // Deinterlace
    int filter_id;
    filter_id = FUNC5(settings, "PictureDeinterlaceFilter");
    if (filter_id != HB_FILTER_INVALID)
    {
        const char *deint_filter, *deint_preset, *deint_custom = NULL;

        deint_filter = FUNC3(settings,
                                           "PictureDeinterlaceFilter");
        deint_preset = FUNC3(settings,
                                           "PictureDeinterlacePreset");
        deint_custom = FUNC3(settings,
                                           "PictureDeinterlaceCustom");
        if (FUNC6(filter_id, deint_preset, NULL,
                                      deint_custom))
        {
            if (deint_custom != NULL)
            {
                message = FUNC2(
                            FUNC0("Invalid Deinterlace Settings:\n\n"
                              "Filter:\t%s\n"
                              "Preset:\t%s\n"
                              "Custom:\t%s\n"), deint_filter, deint_preset,
                                                deint_custom);
            }
            else
            {
                message = FUNC2(
                            FUNC0("Invalid Deinterlace Settings:\n\n"
                              "Filter:\t%s\n"
                              "Preset:\t%s\n"), deint_filter, deint_preset);
            }
            FUNC4(parent, GTK_MESSAGE_ERROR,
                               message, FUNC0("Cancel"), NULL);
            FUNC1(message);
            return FALSE;
        }
    }

    // Denoise
    filter_id = FUNC5(settings, "PictureDenoiseFilter");
    if (filter_id != HB_FILTER_INVALID)
    {
        const char *denoise_filter, *denoise_preset;
        const char *denoise_tune = NULL, *denoise_custom = NULL;

        denoise_filter = FUNC3(settings, "PictureDenoiseFilter");
        denoise_preset = FUNC3(settings, "PictureDenoisePreset");
        if (filter_id == HB_FILTER_NLMEANS)
        {
            denoise_tune = FUNC3(settings, "PictureDenoiseTune");
        }
        denoise_custom = FUNC3(settings, "PictureDenoiseCustom");
        if (FUNC6(filter_id, denoise_preset, denoise_tune,
                                      denoise_custom))
        {
            message = FUNC2(
                        FUNC0("Invalid Denoise Settings:\n\n"
                          "Filter:\t%s\n"
                          "Preset:\t%s\n"
                          "Tune:\t%s\n"
                          "Custom:\t%s\n"), denoise_filter, denoise_preset,
                                           denoise_tune, denoise_custom);
            FUNC4(parent, GTK_MESSAGE_ERROR,
                               message, FUNC0("Cancel"), NULL);
            FUNC1(message);
            return FALSE;
        }
    }

    // Sharpen
    filter_id = FUNC5(settings, "PictureSharpenFilter");
    if (filter_id != HB_FILTER_INVALID)
    {
        const char *sharpen_filter, *sharpen_preset;
        const char *sharpen_tune = NULL, *sharpen_custom = NULL;

        sharpen_filter = FUNC3(settings, "PictureSharpenFilter");
        sharpen_preset = FUNC3(settings, "PictureSharpenPreset");
        sharpen_tune = FUNC3(settings, "PictureSharpenTune");
        sharpen_custom = FUNC3(settings, "PictureSharpenCustom");
        if (FUNC6(filter_id, sharpen_preset, sharpen_tune,
                                      sharpen_custom))
        {
            message = FUNC2(
                        FUNC0("Invalid Sharpen Settings:\n\n"
                          "Filter:\t%s\n"
                          "Preset:\t%s\n"
                          "Tune:\t%s\n"
                          "Custom:\t%s\n"), sharpen_filter, sharpen_preset,
                                           sharpen_tune, sharpen_custom);
            FUNC4(parent, GTK_MESSAGE_ERROR,
                               message, FUNC0("Cancel"), NULL);
            FUNC1(message);
            return FALSE;
        }
    }

    return TRUE;
}