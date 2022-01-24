#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_value_t ;
struct TYPE_7__ {int /*<<< orphan*/  list_audio; } ;
typedef  TYPE_2__ hb_title_t ;
struct TYPE_6__ {int samplerate; int channel_layout; } ;
struct TYPE_8__ {TYPE_1__ in; } ;
typedef  TYPE_3__ hb_audio_config_t ;

/* Variables and functions */
 int AV_CH_LAYOUT_5POINT1 ; 
 int HB_ACODEC_PASS_FLAG ; 
 int HB_AMIXDOWN_NONE ; 
 int HB_INVALID_AMIXDOWN ; 
 double HB_INVALID_AUDIO_QUALITY ; 
 int FUNC0 (int,int,int,int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 double FUNC4 (int,double) ; 
 double FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,float*,float*,float*,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 double FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int,int,int) ; 
 int FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (double) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

void FUNC19(const hb_title_t * title,
                                hb_value_t * audio_settings)
{
    const char        * mix_name;
    const char        * codec_name;
    int                 track, codec, mix, bitrate, samplerate;
    int                 quality_enable;
    double              quality;
    hb_value_t        * val;
    hb_audio_config_t * audio_config = NULL;

    track      = FUNC9(audio_settings, "Track");
    codec_name = FUNC10(audio_settings, "Encoder");
    codec      = FUNC2(codec_name);
    mix_name   = FUNC10(audio_settings, "Mixdown");
    mix        = FUNC14(mix_name);
    bitrate    = FUNC9(audio_settings, "Bitrate");
    quality    = FUNC8(audio_settings, "Quality");
    samplerate = FUNC9(audio_settings, "Samplerate");
    val        = FUNC7(audio_settings, "Quality");
    quality_enable = !(bitrate > 0 || val == NULL ||
                       quality == HB_INVALID_AUDIO_QUALITY);

    if (title != NULL)
    {
        audio_config = FUNC12(title->list_audio, track);
    }
    if (samplerate == 0 && audio_config != NULL)
    {
        samplerate = audio_config->in.samplerate;
    }

    if (codec & HB_ACODEC_PASS_FLAG)
    {
        mix = HB_AMIXDOWN_NONE;
        FUNC11(audio_settings, "Mixdown",
                    FUNC18(FUNC15(mix)));
        FUNC11(audio_settings, "Samplerate", FUNC17(0));
        FUNC11(audio_settings, "DRC", FUNC16(0.0));
    }
    else
    {
        int layout = AV_CH_LAYOUT_5POINT1;
        if (audio_config != NULL)
        {
            layout = audio_config->in.channel_layout;
        }
        if (mix == HB_AMIXDOWN_NONE)
        {
            mix = HB_INVALID_AMIXDOWN;
        }
        mix = FUNC13(codec, layout, mix);
        if (quality_enable)
        {
            float low, high, gran;
            int dir;
            FUNC6(codec, &low, &high, &gran, &dir);
            if (quality < low || quality > high)
            {
                quality = FUNC5(codec);
            }
            else
            {
                quality = FUNC4(codec, quality);
            }
        }
        else
        {
            if (bitrate != -1)
            {
                bitrate = FUNC0(codec, bitrate,
                                                    samplerate, mix);
            }
            else
            {
                bitrate = FUNC1(codec, samplerate, mix);
            }
        }
        FUNC11(audio_settings, "Mixdown",
                    FUNC18(FUNC15(mix)));
    }
    if (quality_enable)
    {
        bitrate = -1;
    }
    else
    {
        quality = HB_INVALID_AUDIO_QUALITY;
    }
    FUNC11(audio_settings, "Quality", FUNC16(quality));
    FUNC11(audio_settings, "Bitrate", FUNC17(bitrate));
    FUNC11(audio_settings, "Encoder",
                FUNC18(FUNC3(codec)));
}