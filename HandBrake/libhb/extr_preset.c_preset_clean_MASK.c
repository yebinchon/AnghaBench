#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_value_t ;
struct TYPE_3__ {int format; } ;
typedef  TYPE_1__ hb_container_t ;

/* Variables and functions */
 int HB_ACODEC_INVALID ; 
 int HB_AMIXDOWN_NONE ; 
 int HB_INVALID_AMIXDOWN ; 
 int HB_MUX_INVALID ; 
 int HB_VCODEC_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (char const*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,char const*) ; 
 int FUNC11 (char const*) ; 
 char* FUNC12 (int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (char const*) ; 
 int FUNC17 (int) ; 
 int FUNC18 (char const*) ; 
 char* FUNC19 (int) ; 
 int FUNC20 (char const*) ; 
 scalar_t__ FUNC21 (char const*,char*) ; 

__attribute__((used)) static void FUNC22(hb_value_t *preset, hb_value_t *template)
{
    FUNC0(preset, template);

    // Check for proper "short name" values.
    // Convert as necessary.
    hb_value_t *val;
    const char *preset_name = NULL;
    int muxer;

    val = FUNC8(preset, "PresetName");
    if (val != NULL)
        preset_name = FUNC15(val);

    val = FUNC8(preset, "FileFormat");
    if (val != NULL)
    {
        const char *s, *mux;
        s = FUNC15(val);
        muxer = FUNC5(s);
        if (muxer == HB_MUX_INVALID)
        {
            const hb_container_t *c = FUNC6(NULL);
            muxer = c->format;
            FUNC10("Preset %s: Invalid container (%s)", preset_name, s);
        }
        mux = FUNC7(muxer);
        val = FUNC16(mux);
        FUNC9(preset, "FileFormat", val);
    }
    else
    {
        const hb_container_t *c = FUNC6(NULL);
        muxer = c->format;
    }
    val = FUNC8(preset, "VideoEncoder");
    if (val != NULL)
    {
        const char *s, *enc;
        int vcodec;
        s = FUNC15(val);
        vcodec = FUNC18(s);
        if (vcodec == HB_VCODEC_INVALID)
        {
            vcodec = FUNC17(muxer);
            FUNC10("Preset %s: Invalid video encoder (%s)", preset_name, s);
        }
        enc = FUNC19(vcodec);
        val = FUNC16(enc);
        FUNC9(preset, "VideoEncoder", val);
    }
    val = FUNC8(preset, "VideoFramerate");
    if (val != NULL)
    {
        const char *s;
        s = FUNC15(val);
        if (FUNC21(s, "auto"))
        {
            int fr = FUNC20(s);
            if (fr < 0)
            {
                if (FUNC21(s, "same as source"))
                {
                    FUNC10("Preset %s: Invalid video framerate (%s)",
                             preset_name, s);
                }
                val = FUNC16("auto");
                FUNC9(preset, "VideoFramerate", val);
            }
        }
    }
    val = FUNC8(preset, "AudioEncoderFallback");
    if (val != NULL)
    {
        const char *s, *enc;
        int acodec;
        s = FUNC15(val);
        acodec = FUNC2(s);
        if (acodec == HB_ACODEC_INVALID)
        {
            acodec = FUNC1(muxer);
            FUNC10("Preset %s: Invalid audio fallback encoder (%s)",
                     preset_name, s);
        }
        enc = FUNC3(acodec);
        val = FUNC16(enc);
        FUNC9(preset, "AudioEncoderFallback", val);
    }
    hb_value_t *alist = FUNC8(preset, "AudioList");
    int count = FUNC14(alist);
    int ii;
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t *adict = FUNC13(alist, ii);
        val = FUNC8(adict, "AudioEncoder");
        if (val != NULL)
        {
            const char *s, *enc;
            int acodec;
            s = FUNC15(val);
            acodec = FUNC2(s);
            if (acodec == HB_ACODEC_INVALID)
            {
                acodec = FUNC1(muxer);
                FUNC10("Preset %s: Invalid audio encoder (%s)",
                         preset_name, s);
            }
            enc = FUNC3(acodec);
            val = FUNC16(enc);
            FUNC9(adict, "AudioEncoder", val);
        }
        val = FUNC8(adict, "AudioSamplerate");
        if (val != NULL)
        {
            const char *s;
            s = FUNC15(val);
            if (FUNC21(s, "auto"))
            {
                int sr = FUNC4(s);
                if (sr < 0)
                {
                    FUNC10("Preset %s: Invalid audio samplerate (%s)",
                             preset_name, s);
                    val = FUNC16("auto");
                    FUNC9(adict, "AudioSamplerate", val);
                }
            }
        }
        val = FUNC8(adict, "AudioMixdown");
        if (val != NULL)
        {
            const char *s, *mix;
            s = FUNC15(val);
            int mixdown = FUNC11(s);
            if (mixdown == HB_INVALID_AMIXDOWN)
            {
                // work.c do_job() sanitizes NONE to default mixdown
                mixdown = HB_AMIXDOWN_NONE;
                FUNC10("Preset %s: Invalid audio mixdown (%s)",
                         preset_name, s);
            }
            mix = FUNC12(mixdown);
            val = FUNC16(mix);
            FUNC9(adict, "AudioMixdown", val);
        }
    }
}