#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  hb_value_t ;
typedef  int /*<<< orphan*/  hb_value_array_t ;
struct TYPE_9__ {int /*<<< orphan*/  list_audio; } ;
typedef  TYPE_2__ hb_title_t ;
typedef  int /*<<< orphan*/  const hb_dict_t ;
struct TYPE_8__ {scalar_t__* name; int /*<<< orphan*/  codec; } ;
struct TYPE_10__ {TYPE_1__ in; } ;
typedef  TYPE_3__ hb_audio_config_t ;

/* Variables and functions */
 scalar_t__ HB_ACODEC_INVALID ; 
 int HB_ACODEC_NONE ; 
 int HB_ACODEC_PASS_FLAG ; 
 int /*<<< orphan*/  HB_VALUE_TYPE_DOUBLE ; 
 int /*<<< orphan*/  HB_VALUE_TYPE_INT ; 
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 int FUNC0 (TYPE_2__*,char const*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  const* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,char*,char const*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int,char*,int) ; 
 int /*<<< orphan*/  const* FUNC26 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC27(hb_value_array_t *list, const hb_dict_t *preset,
                               hb_title_t *title, int mux, int copy_mask,
                               int fallback, const char *lang,
                               int behavior, int mode, hb_dict_t *track_dict)
{
    hb_value_array_t * encoder_list = FUNC4(preset, "AudioList");
    int count = FUNC13(encoder_list);
    int track = FUNC0(title, lang, 0, behavior);
    while (track >= 0)
    {
        int track_count = FUNC13(list);
        char key[8];
        FUNC25(key, sizeof(key), "%d", track);

        count = mode && track_count ? 1 : count;
        int ii;
        for (ii = 0; ii < count; ii++)
        {
            // Check if this source track has already been added using these
            // same encoder settings.  If so, continue to next track.
            hb_dict_t *used = FUNC26(track_dict, ii);
            if (FUNC17(FUNC4(used, key)))
                continue;

            // Create new audio output track settings
            hb_dict_t *audio_dict = FUNC6();
            hb_value_t *acodec_value;
            hb_dict_t *encoder_dict = FUNC12(encoder_list, ii);
            int out_codec;

            acodec_value = FUNC4(encoder_dict, "AudioEncoder");
            if (FUNC22(acodec_value) == HB_VALUE_TYPE_STRING)
            {
                out_codec = FUNC1(
                                FUNC19(acodec_value));
            }
            else
            {
                out_codec = FUNC18(acodec_value);
            }
            // Save the encoder value before sanitizing.  This value is
            // useful to the frontends.
            FUNC7(audio_dict, "PresetEncoder",
                FUNC21(FUNC2(out_codec)));

            hb_audio_config_t *aconfig;
            aconfig = FUNC9(title->list_audio, track);
            out_codec = FUNC24(aconfig->in.codec, out_codec,
                                             copy_mask, fallback, mux);
            if (out_codec == HB_ACODEC_NONE || HB_ACODEC_INVALID)
            {
                FUNC16(&audio_dict);
                continue;
            }
            FUNC7(audio_dict, "Track", FUNC20(track));
            FUNC7(audio_dict, "Encoder", FUNC21(
                        FUNC2(out_codec)));
            const char * name = FUNC5(encoder_dict, "AudioTrackName");
            if (name != NULL && name[0] != 0)
            {
                FUNC8(audio_dict, "Name", name);
            }
            else if (aconfig->in.name != NULL && aconfig->in.name[0] != 0)
            {
                FUNC8(audio_dict, "Name", aconfig->in.name);
            }
            if (!(out_codec & HB_ACODEC_PASS_FLAG))
            {
                if (FUNC4(encoder_dict, "AudioTrackGainSlider") != NULL)
                {
                    FUNC7(audio_dict, "Gain", FUNC15(
                        FUNC4(encoder_dict, "AudioTrackGainSlider")));
                }
                if (FUNC4(encoder_dict, "AudioTrackDRCSlider") != NULL)
                {
                    FUNC7(audio_dict, "DRC", FUNC15(
                        FUNC4(encoder_dict, "AudioTrackDRCSlider")));
                }
                if (FUNC4(encoder_dict, "AudioMixdown") != NULL)
                {
                    FUNC7(audio_dict, "Mixdown", FUNC15(
                        FUNC4(encoder_dict, "AudioMixdown")));
                }
                if (FUNC4(encoder_dict, "AudioNormalizeMixLevel") != NULL)
                {
                    FUNC7(audio_dict, "NormalizeMixLevel", FUNC15(
                        FUNC4(encoder_dict, "AudioNormalizeMixLevel")));
                }
                if (FUNC4(encoder_dict, "AudioDitherMethod") != NULL)
                {
                    FUNC7(audio_dict, "DitherMethod", FUNC15(
                        FUNC4(encoder_dict, "AudioDitherMethod")));
                }
                if (FUNC4(encoder_dict, "AudioSamplerate") != NULL)
                {
                    const char * sr_name;
                    int          sr;

                    sr_name = FUNC5(encoder_dict,
                                                 "AudioSamplerate");
                    sr      = FUNC3(sr_name);
                    if (sr < 0)
                    {
                        sr = 0;
                    }
                    FUNC7(audio_dict, "Samplerate", FUNC20(sr));
                }
                if (FUNC4(encoder_dict, "AudioCompressionLevel") != NULL)
                {
                    FUNC7(audio_dict, "CompressionLevel", FUNC15(
                        FUNC4(encoder_dict, "AudioCompressionLevel")));
                }
                if (FUNC17(FUNC4(encoder_dict,
                                                  "AudioTrackQualityEnable")))
                {
                    FUNC7(audio_dict, "Quality", FUNC23(
                            FUNC4(encoder_dict, "AudioTrackQuality"),
                            HB_VALUE_TYPE_DOUBLE));
                }
                else
                {
                    FUNC7(audio_dict, "Bitrate", FUNC23(
                        FUNC4(encoder_dict, "AudioBitrate"),
                        HB_VALUE_TYPE_INT));
                }
            }

            // Sanitize the settings before adding to the audio list
            FUNC10(title,  audio_dict);

            FUNC11(list, audio_dict);
            FUNC7(used, key, FUNC14(1));
        }
        if (behavior == 2)
            track = FUNC0(title, lang, track + 1, behavior);
        else
            break;
    }
}