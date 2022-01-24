#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  builder; int /*<<< orphan*/ * settings; } ;
typedef  TYPE_2__ signal_user_data_t ;
typedef  int /*<<< orphan*/  hb_title_t ;
struct TYPE_10__ {int samplerate; int /*<<< orphan*/  codec_param; int /*<<< orphan*/  codec; } ;
struct TYPE_12__ {TYPE_1__ in; } ;
typedef  TYPE_3__ hb_audio_config_t ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int HB_ACODEC_PASS_FLAG ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC13(signal_user_data_t *ud, GhbValue *asettings, GtkWidget *widget)
{
    FUNC2(ud, asettings);
    FUNC7(ud);
    if (widget != NULL)
        FUNC3(ud, widget, NULL);

    int track = -1, title_id, mix = 0, acodec = 0, sr = 0;
    hb_audio_config_t *aconfig = NULL;
    const hb_title_t *title;
    gboolean qe;

    title_id = FUNC5(ud->settings, "title");
    title = FUNC8(title_id, NULL);

    if (asettings != NULL)
    {
        track = FUNC5(asettings, "Track");
        acodec = FUNC9(asettings, "Encoder");
        aconfig = FUNC6(title, track);
        mix = FUNC10(asettings, "Mixdown");
        sr = FUNC5(asettings, "Samplerate");
        if (sr == 0 && aconfig != NULL)
        {
            sr = aconfig->in.samplerate;
        }
    }

    gboolean is_passthru = (acodec & HB_ACODEC_PASS_FLAG);
    gboolean enable_drc = TRUE;
    if (aconfig != NULL)
    {
        enable_drc = FUNC12(aconfig->in.codec,
                                            aconfig->in.codec_param, acodec) &&
                     !is_passthru;
    }

    widget = FUNC0(ud->builder, "AudioTrackDRCSlider");
    FUNC11(widget, enable_drc);
    widget = FUNC0(ud->builder, "AudioTrackDRCSliderLabel");
    FUNC11(widget, enable_drc);
    widget = FUNC0(ud->builder, "AudioTrackDRCValue");
    FUNC11(widget, enable_drc);

    qe = FUNC4(ud->settings, "AudioTrackQualityEnable");
    FUNC1(ud, qe, acodec, sr, mix);

    widget = FUNC0(ud->builder, "AudioMixdown");
    FUNC11(widget, !is_passthru);
    widget = FUNC0(ud->builder, "AudioSamplerate");
    FUNC11(widget, !is_passthru);
    widget = FUNC0(ud->builder, "AudioTrackGainSlider");
    FUNC11(widget, !is_passthru);
    widget = FUNC0(ud->builder, "AudioTrackGainValue");
    FUNC11(widget, !is_passthru);
}