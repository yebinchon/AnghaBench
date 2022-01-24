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
typedef  int /*<<< orphan*/  gdouble ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC7 (int,int,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* FUNC10 (int) ; 
 char const* FUNC11 (int) ; 

__attribute__((used)) static GhbValue*
FUNC12(
    GhbValue *settings,
    int track,
    int encoder,
    gdouble quality,
    int bitrate,
    int samplerate,
    int mix,
    gdouble drc,
    gdouble gain)
{
    GhbValue *asettings;
    GhbValue *atrack;

    asettings = FUNC3();

    FUNC5(asettings, "Track", track);
    FUNC6(asettings, "Encoder",
                        FUNC10(encoder));
    FUNC4(asettings, "Quality", quality);
    FUNC5(asettings, "Bitrate", bitrate);
    FUNC5(asettings, "Samplerate", samplerate);

    atrack = FUNC8(settings, track);
    if (atrack != NULL)
    {
        int layout = FUNC1(atrack, "ChannelLayout");
        const char * name = FUNC2(atrack, "Name");
        mix = FUNC7(layout, encoder, mix);
        if (name != NULL)
        {
            FUNC6(asettings, "Name", name);
        }
    }
    FUNC6(asettings, "Mixdown", FUNC11(mix));
    FUNC4(asettings, "DRC", drc);
    FUNC4(asettings, "Gain", gain);

    FUNC9(settings, asettings);
    FUNC0(settings, asettings);

    return asettings;
}