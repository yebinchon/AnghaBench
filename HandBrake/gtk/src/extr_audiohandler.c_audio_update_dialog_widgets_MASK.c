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
typedef  int /*<<< orphan*/  signal_user_data_t ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  block_updates ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (double) ; 
 char* FUNC3 (double) ; 
 double FUNC4 (int,double) ; 
 char* FUNC5 (int,double) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 double FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC10 (double) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(signal_user_data_t *ud, GhbValue *asettings)
{
    if (asettings != NULL)
    {
        double gain, drc, quality, qualityx;
        char *s_gain, *s_drc, *s_quality;
        gboolean qe;

        block_updates = TRUE;
        FUNC13(ud, "AudioTrack",
                      FUNC9(asettings, "Track"));
        FUNC13(ud, "AudioEncoder",
                      FUNC9(asettings, "Encoder"));
        FUNC13(ud, "AudioBitrate",
                      FUNC9(asettings, "Bitrate"));
        GhbValue *val = FUNC9(asettings, "Name");
        if (val != NULL)
        {
            FUNC13(ud, "AudioTrackName", val);
        }
        else
        {
            FUNC13(ud, "AudioTrackName", FUNC12(""));
        }
        FUNC13(ud, "AudioSamplerate",
                      FUNC9(asettings, "Samplerate"));
        FUNC13(ud, "AudioMixdown",
                      FUNC9(asettings, "Mixdown"));
        FUNC13(ud, "AudioTrackDRCSlider",
                      FUNC9(asettings, "DRC"));
        drc = FUNC8(asettings, "DRC");
        s_drc = FUNC2(drc);
        FUNC13(ud, "AudioTrackDRCValue", FUNC12(s_drc));
        FUNC1(s_drc);
        FUNC13(ud, "AudioTrackGainSlider",
                      FUNC9(asettings, "Gain"));
        gain = FUNC8(asettings, "Gain");
        s_gain = FUNC3(gain);
        FUNC13(ud, "AudioTrackGainValue", FUNC12(s_gain));

        int codec = FUNC11(asettings, "Encoder");
        quality = FUNC8(asettings, "Quality");
        qualityx = FUNC4(codec, quality);
        FUNC13(ud, "AudioTrackQualityX", FUNC10(qualityx));
        s_quality = FUNC5(codec, quality);
        FUNC13(ud, "AudioTrackQualityValue", FUNC12(s_quality));
        FUNC1(s_quality);
        // Setting a radio button to FALSE does not automatically make
        // the other one TRUE
        qe = FUNC6(asettings);
        if (qe)
        {
            FUNC13(ud, "AudioTrackQualityEnable",
                          FUNC7(qe));
        }
        else
        {
            FUNC13(ud, "AudioTrackBitrateEnable",
                          FUNC7(!qe));
        }
        block_updates = FALSE;
    }
    FUNC0(ud, asettings, NULL);
}