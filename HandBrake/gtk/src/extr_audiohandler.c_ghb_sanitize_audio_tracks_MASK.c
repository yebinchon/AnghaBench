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
struct TYPE_5__ {int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gdouble ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

void FUNC9(signal_user_data_t *ud)
{
    int ii;
    GhbValue *alist = FUNC6(ud->settings);
    int count = FUNC3(alist);

    for (ii = 0; ii < count; ii++)
    {
        GhbValue *asettings = FUNC2(alist, ii);
        FUNC7(ud->settings, asettings);
    }

    GhbValue *asettings = FUNC0(ud, NULL);
    if (asettings != NULL)
    {
        FUNC8(ud, "AudioEncoder",
                      FUNC4(asettings, "Encoder"));
        FUNC8(ud, "AudioBitrate",
                      FUNC4(asettings, "Bitrate"));
        gdouble quality = FUNC1(asettings);
        FUNC8(ud, "AudioTrackQualityX", FUNC5(quality));
        FUNC8(ud, "AudioSamplerate",
                      FUNC4(asettings, "Samplerate"));
        FUNC8(ud, "AudioMixdown",
                      FUNC4(asettings, "Mixdown"));
        FUNC8(ud, "AudioTrackDRCSlider",
                      FUNC4(asettings, "DRC"));
    }
}