#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  list_audio; } ;
typedef  TYPE_2__ hb_title_t ;
struct TYPE_11__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_3__ hb_container_t ;
struct TYPE_9__ {int /*<<< orphan*/  codec; } ;
struct TYPE_12__ {TYPE_1__ in; } ;
typedef  TYPE_4__ hb_audio_config_t ;
typedef  scalar_t__ gint ;
typedef  int /*<<< orphan*/  gdouble ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  HB_INVALID_AUDIO_QUALITY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC5 (TYPE_2__ const*,char const*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*) ; 
 TYPE_4__* FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static GhbValue*
FUNC15(
    const hb_title_t *title,
    GhbValue *settings,
    GhbValue *pref_audio,
    const char *lang,
    int pref_index,
    int start_track)
{
    GhbValue *audio, *asettings = NULL;
    gdouble drc, gain, quality;
    gboolean enable_quality;
    gint track, acodec, bitrate, samplerate, mix;

    gint select_acodec;
    gint fallback;

    const char *mux_id;
    const hb_container_t *mux;

    mux_id = FUNC4(settings, "FileFormat");
    mux = FUNC7(mux_id);

    gint copy_mask = FUNC6(settings);

    audio = FUNC1(pref_audio, pref_index);

    acodec = FUNC11(audio, "AudioEncoder");
    fallback = FUNC9(settings, acodec);

    bitrate = FUNC10(audio, "AudioBitrate");
    samplerate = FUNC12(audio, "AudioSamplerate");
    mix = FUNC13(audio, "AudioMixdown");
    drc = FUNC3(audio, "AudioTrackDRCSlider");
    gain = FUNC3(audio, "AudioTrackGainSlider");
    enable_quality = FUNC2(audio, "AudioTrackQualityEnable");
    quality = FUNC3(audio, "AudioTrackQuality");
    if (enable_quality)
    {
        bitrate = -1;
    }
    else
    {
        quality = HB_INVALID_AUDIO_QUALITY;
    }

    track = FUNC5(title, lang, start_track);
    if (track >= 0)
    {
        // Check to see if:
        // 1. pref codec is passthru
        // 2. source codec is not passthru
        // 3. next pref is enabled
        hb_audio_config_t *aconfig;
        aconfig = FUNC14(title->list_audio, track);
        select_acodec = FUNC8(
                            mux->format, aconfig->in.codec, acodec, fallback, copy_mask);

        asettings = FUNC0(settings, track, select_acodec,
                                    quality, bitrate,
                                    samplerate, mix, drc, gain);
    }
    return asettings;
}