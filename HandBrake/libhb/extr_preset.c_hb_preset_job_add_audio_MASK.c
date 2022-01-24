#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const hb_value_t ;
typedef  int /*<<< orphan*/  const hb_value_array_t ;
struct TYPE_4__ {int /*<<< orphan*/  list_audio; } ;
typedef  TYPE_1__ hb_title_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;
typedef  int /*<<< orphan*/  const hb_dict_t ;

/* Variables and functions */
 int HB_MUX_INVALID ; 
 scalar_t__ HB_VALUE_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,TYPE_1__*,int,int,int,char const*,int,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/  const*,int*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  const* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC11 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC12 () ; 
 int FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC14 (int /*<<< orphan*/  const*) ; 
 int FUNC15 (int /*<<< orphan*/  const*) ; 
 int FUNC16 (int /*<<< orphan*/  const*) ; 
 char* FUNC17 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/  const*) ; 

int FUNC21(hb_handle_t *h, int title_index,
                            const hb_dict_t *preset, hb_dict_t *job_dict)
{
    hb_title_t *title = FUNC9(h, title_index);
    if (title == NULL)
    {
        // Can't create audio track list without knowing source audio tracks
        FUNC8("Invalid title index (%d)", title_index);
        return -1;
    }
    if (FUNC10(title->list_audio) <= 0)
    {
        // Source has no audio
        return 0;
    }

    int mux = FUNC2(job_dict);
    if (mux == HB_MUX_INVALID)
    {
        return -1;
    }

    hb_dict_t *audio_dict = FUNC5(job_dict, "Audio");
    if (audio_dict == NULL)
    {
        audio_dict = FUNC6();
        FUNC7(job_dict, "Audio", audio_dict);
    }
    int copy_mask;
    hb_value_t *copy_mask_array = FUNC1(preset, &copy_mask);
    if (copy_mask_array == NULL)
    {
        return -1;
    }
    int fallback = 0;
    FUNC7(audio_dict, "CopyMask", copy_mask_array);
    hb_value_t *fallback_value = FUNC5(preset, "AudioEncoderFallback");
    if (fallback_value != NULL)
    {
        FUNC7(audio_dict, "FallbackEncoder",
                    FUNC14(fallback_value));
        if (FUNC18(fallback_value) == HB_VALUE_TYPE_STRING)
        {
            const char * s = FUNC17(fallback_value);
            fallback = FUNC3(s);
            if (fallback == 0)
            {
                FUNC8("Invalid fallback audio codec (%s)", s);
                return -1;
            }
        }
        else
        {
            fallback = FUNC16(fallback_value);
        }
    }
    if (FUNC20(preset) < 0)
        return -1;

    hb_value_array_t *list = FUNC5(audio_dict, "AudioList");
    if (list == NULL)
    {
        list = FUNC12();
        FUNC7(audio_dict, "AudioList", list);
    }

    int behavior = 1;   // default first
    const char *s;
    s = FUNC17(FUNC5(preset, "AudioTrackSelectionBehavior"));
    if (s != NULL)
    {
        if      (!FUNC19(s, "none"))
            return 0;
        else if (!FUNC19(s, "all"))
            behavior = 2;
    }

    // Create hash that is used to track which tracks have been already added
    // We do not want to add the same track with the same settings twice
    hb_dict_t *track_dict = FUNC6();

    // Add tracks for all languages in the language list
    int mode;
    hb_value_array_t *lang_list = FUNC5(preset, "AudioLanguageList");
    mode = FUNC15(FUNC5(preset, "AudioSecondaryEncoderMode"));
    int count = FUNC13(lang_list);
    int ii;
    for (ii = 0; ii < count; ii++)
    {
        const char *lang;
        lang = FUNC17(FUNC11(lang_list, ii));
        FUNC0(list, preset, title, mux, copy_mask, fallback,
                           lang, behavior, mode, track_dict);
    }
    // If AudioLanguageList is empty, try "any" language option
    if (count <= 0)
    {
        FUNC0(list, preset, title, mux, copy_mask, fallback,
                           "any", behavior, mode, track_dict);
    }
    FUNC4(&track_dict);
    return 0;
}