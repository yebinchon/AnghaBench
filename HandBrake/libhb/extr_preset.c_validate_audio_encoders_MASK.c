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
typedef  int /*<<< orphan*/  const hb_value_t ;
typedef  int /*<<< orphan*/  hb_value_array_t ;
typedef  int /*<<< orphan*/  hb_dict_t ;

/* Variables and functions */
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/  const*) ; 
 char* FUNC11 (int /*<<< orphan*/  const*) ; 
 char* FUNC12 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 

__attribute__((used)) static int FUNC15(const hb_dict_t *preset)
{
    hb_value_array_t * encoder_list = FUNC5(preset, "AudioList");
    int count = FUNC9(encoder_list);
    int ii;
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t *audio_dict = FUNC8(encoder_list, ii);
        hb_value_t *value;
        int codec, mix, sr;
        value = FUNC5(audio_dict, "AudioEncoder");
        if (FUNC13(value) == HB_VALUE_TYPE_STRING)
        {
            codec = FUNC2(FUNC11(value));
        }
        else
        {
            codec = FUNC10(value);
        }
        if (FUNC1(codec) == NULL)
        {
            char *str = FUNC12(value);
            FUNC6("Invalid audio encoder (%s)", str);
            FUNC0(str);
            return -1;
        }

        value = FUNC5(audio_dict, "AudioMixdown");
        if (FUNC13(value) == HB_VALUE_TYPE_STRING)
        {
            mix = FUNC2(FUNC11(value));
        }
        else
        {
            mix = FUNC10(value);
        }
        if (FUNC7(mix) == NULL)
        {
            char *str = FUNC12(value);
            FUNC6("Invalid audio mixdown (%s)", str);
            FUNC0(str);
            return -1;
        }

        value = FUNC5(audio_dict, "AudioSamplerate");
        if (FUNC13(value) == HB_VALUE_TYPE_STRING)
        {
            const char *str = FUNC11(value);
            if (!FUNC14(str, "source") ||
                !FUNC14(str, "auto")   ||
                !FUNC14(str, "same as source"))
            {
                sr = 0;
            }
            else
            {
                sr = FUNC3(str);
            }
        }
        else
        {
            sr = FUNC10(value);
        }
        if (sr != 0 && FUNC4(sr) == NULL)
        {
            char *str = FUNC12(value);
            FUNC6("Invalid audio samplerate (%s)", str);
            FUNC0(str);
            return -1;
        }
    }
    return 0;
}