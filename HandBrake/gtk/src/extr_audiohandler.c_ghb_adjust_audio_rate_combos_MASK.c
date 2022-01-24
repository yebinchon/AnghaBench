#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gdouble ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (void*,int,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int,int,int*,int*) ; 

__attribute__((used)) static void
FUNC17(signal_user_data_t *ud, GhbValue *asettings)
{
    if (asettings != NULL)
    {
        FUNC12(ud->settings, asettings);

        int track, mix, acodec;
        GhbValue * atrack;
        uint64_t layout;

        track = FUNC6(asettings, "Track");

        acodec = FUNC13(asettings, "Encoder");
        mix = FUNC14(asettings, "Mixdown");

        int low, high, sr;
        sr = FUNC6(asettings, "Samplerate");
        atrack = FUNC10(ud->settings, track);
        if (sr == 0)
        {
            sr = FUNC6(atrack, "SampleRate");
        }
        layout = FUNC6(atrack, "ChannelLayout");
        mix = FUNC9(layout, acodec, mix);
        FUNC16(acodec, sr, mix, &low, &high);

        GtkWidget *w = FUNC0(ud->builder, "AudioBitrate");
        FUNC3(FUNC1(w), low, high);
        w = FUNC0(ud->builder, "AudioMixdown");
        FUNC11(FUNC1(w), acodec);
        w = FUNC0(ud->builder, "AudioSamplerate");
        FUNC5(FUNC1(w), acodec);

        FUNC15(ud, "AudioEncoder",
                      FUNC7(asettings, "Encoder"));
        FUNC15(ud, "AudioBitrate",
                      FUNC7(asettings, "Bitrate"));
        gdouble quality = FUNC2(asettings);
        FUNC15(ud, "AudioTrackQualityX", FUNC8(quality));
        FUNC15(ud, "AudioSamplerate",
                      FUNC7(asettings, "Samplerate"));
        FUNC15(ud, "AudioMixdown",
                      FUNC7(asettings, "Mixdown"));
        FUNC15(ud, "AudioTrackDRCSlider",
                      FUNC7(asettings, "DRC"));
        FUNC4(ud);
    }
}