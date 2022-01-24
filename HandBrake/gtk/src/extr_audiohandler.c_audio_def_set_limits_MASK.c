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
struct TYPE_3__ {int /*<<< orphan*/ * settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int gint ;
typedef  int /*<<< orphan*/  gdouble ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkListBoxRow ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int HB_ACODEC_AUTO_PASS ; 
 int HB_ACODEC_PASS_FLAG ; 
 scalar_t__ HB_INVALID_AUDIO_QUALITY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int FUNC16 (int /*<<< orphan*/ *,char*) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,int,int,int*,int*) ; 
 scalar_t__ FUNC19 (int) ; 

void FUNC20(signal_user_data_t *ud, GtkWidget *widget, gboolean set_default)
{
    GtkListBoxRow *row = FUNC4(widget);
    gint index = FUNC17(row);

    GhbValue *alist = FUNC11(ud->settings, "AudioList");
    int count = FUNC7(alist);
    if (index < 0 || index >= count)
        return;

    GhbValue *adict = FUNC6(alist, index);

    int codec = FUNC14(adict, "AudioEncoder");
    int fallback = FUNC14(ud->settings,
                                                    "AudioEncoderFallback");
    gdouble quality = FUNC10(adict, "AudioTrackQuality");

    // Allow quality settings if the current encoder supports quality
    // or if the encoder is auto-passthru and the fallback encoder
    // supports quality.
    gboolean sensitive =
        FUNC19(codec) != HB_INVALID_AUDIO_QUALITY ||
        (codec == HB_ACODEC_AUTO_PASS &&
         FUNC19(fallback) != HB_INVALID_AUDIO_QUALITY);
    FUNC2(FUNC1(row), sensitive);

    int enc;
    if (sensitive)
    {
        enc = codec;
        if (FUNC19(codec) == HB_INVALID_AUDIO_QUALITY)
        {
            enc = fallback;
        }
        FUNC3(
            FUNC5(FUNC1(row), "AudioTrackQualityX"),
            enc, set_default, quality);
    }

    enc = codec;
    if (enc & HB_ACODEC_PASS_FLAG)
    {
        enc = FUNC13(ud->settings, enc);
    }
    int sr = FUNC15(adict, "AudioSamplerate");
    int mix = FUNC16(adict, "AudioMixdown");
    int low, high;
    FUNC18(enc, sr, mix, &low, &high);
    GtkWidget *w = FUNC5(FUNC1(row), "AudioBitrate");
    FUNC8(FUNC0(w), low, high);
    w = FUNC5(FUNC1(row), "AudioMixdown");
    FUNC12(FUNC0(w), enc);
    w = FUNC5(FUNC1(row), "AudioSamplerate");
    FUNC9(FUNC0(w), enc);
}