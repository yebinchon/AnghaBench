#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct subtitle_behavior_s {int one; int burn_foreign; int make_default; int burn_first; int one_burned; int* used; void* burn_bd; void* burn_dvd; } ;
struct TYPE_12__ {char* iso639_2; } ;
typedef  TYPE_2__ iso639_lang_t ;
typedef  int /*<<< orphan*/  const hb_value_t ;
typedef  int /*<<< orphan*/  const hb_value_array_t ;
struct TYPE_13__ {int /*<<< orphan*/  list_subtitle; int /*<<< orphan*/  list_audio; } ;
typedef  TYPE_3__ hb_title_t ;
struct TYPE_14__ {scalar_t__ source; int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ hb_subtitle_t ;
typedef  int /*<<< orphan*/  hb_handle_t ;
typedef  int /*<<< orphan*/  const hb_dict_t ;
struct TYPE_11__ {char* iso639_2; } ;
struct TYPE_15__ {TYPE_1__ lang; } ;
typedef  TYPE_5__ hb_audio_config_t ;

/* Variables and functions */
 scalar_t__ CC608SUB ; 
 scalar_t__ CC708SUB ; 
 int HB_MUX_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,TYPE_3__*,int,char const*,struct subtitle_behavior_s*) ; 
 int* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  const* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 TYPE_5__* FUNC10 (int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  const* FUNC14 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC15 () ; 
 int FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC17 (int) ; 
 int FUNC18 (int /*<<< orphan*/  const*) ; 
 void* FUNC19 (int /*<<< orphan*/  const*) ; 
 char* FUNC20 (int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char const*,char*) ; 
 scalar_t__ FUNC24 (char const*,char const*,int) ; 

int FUNC25(hb_handle_t *h, int title_index,
                                const hb_dict_t *preset, hb_dict_t *job_dict)
{
    hb_title_t *title = FUNC9(h, title_index);
    if (title == NULL)
    {
        // Can't create subtitle track list without knowing source
        FUNC8("Invalid title index (%d)", title_index);
        return -1;
    }

    int mux = FUNC4(job_dict);
    if (mux == HB_MUX_INVALID)
    {
        return -1;
    }

    // Get the language of the first audio output track
    // Needed for subtitle track selection
    hb_dict_t *audio_dict = FUNC5(job_dict, "Audio");
    hb_value_array_t *audio_list = FUNC5(audio_dict, "AudioList");
    const char *first_audio_lang = NULL;
    if (FUNC16(audio_list) > 0)
    {
        int track;
        hb_value_t *audio = FUNC14(audio_list, 0);
        track = FUNC19(FUNC5(audio, "Track"));
        if (FUNC11(title->list_audio) > track)
        {
            hb_audio_config_t *aconfig;
            aconfig = FUNC10(title->list_audio, track);
            if (aconfig != NULL)
                first_audio_lang = aconfig->lang.iso639_2;
        }
    }

    int source_subtitle_count = FUNC11(title->list_subtitle);
    if (source_subtitle_count == 0)
        return 0;

    hb_dict_t *subtitle_dict = FUNC5(job_dict, "Subtitle");
    if (subtitle_dict == NULL)
    {
        subtitle_dict = FUNC6();
        FUNC7(job_dict, "Subtitle", subtitle_dict);
    }
    hb_value_array_t *list = FUNC5(subtitle_dict, "SubtitleList");
    if (list == NULL)
    {
        list = FUNC15();
        FUNC7(subtitle_dict, "SubtitleList", list);
    }

    int track_behavior = 0;   // default no subtitles
    int burn_behavior = 0;
    int burn_foreign;

    struct subtitle_behavior_s behavior;
    behavior.one = 0;
    behavior.burn_foreign = 0;
    behavior.make_default = 0;
    behavior.burn_first = 0;
    behavior.burn_dvd = 0;
    behavior.burn_bd = 0;
    behavior.one_burned = 0;
    // Create array that is used to track which tracks have been already added
    // We do not want to add the same track with the same settings twice
    behavior.used = FUNC2(source_subtitle_count, sizeof(*behavior.used));

    // Since this function can be called multiple times, we need to
    // initialize the "used" array from the existing subtitles in the list.
    int count, ii;
    count = FUNC16(list);
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t *sub = FUNC14(list, ii);
        int track = FUNC19(FUNC5(sub, "Track"));
        behavior.used[track] = 1;
    }

    const char *s;
    s = FUNC20(FUNC5(preset,
                                        "SubtitleTrackSelectionBehavior"));
    if (s != NULL)
    {
        if      (!FUNC22(s, "first"))
            track_behavior = 1;
        else if (!FUNC22(s, "all"))
            track_behavior = 2;
    }

    s = FUNC20(FUNC5(preset, "SubtitleBurnBehavior"));
    if (s != NULL)
    {
        if      (!FUNC22(s, "foreign"))
            burn_behavior = 1;
        else if (!FUNC22(s, "first"))
            burn_behavior = 2;
        else if (!FUNC22(s, "foreign_first"))
            burn_behavior = 3;
    }

    behavior.burn_dvd = FUNC19(FUNC5(preset,
                                                     "SubtitleBurnDVDSub"));
    behavior.burn_bd  = FUNC19(FUNC5(preset,
                                                     "SubtitleBurnBDSub"));

    burn_foreign        = burn_behavior == 1 || burn_behavior == 3;
    behavior.burn_first = burn_behavior == 2 || burn_behavior == 3;

    int foreign_audio_search, foreign_first_audio;
    foreign_audio_search = FUNC18(FUNC5(preset,
                                            "SubtitleAddForeignAudioSearch"));
    foreign_first_audio  = FUNC18(FUNC5(preset,
                                            "SubtitleAddForeignAudioSubtitle"));


    // Add tracks for all languages in the language list
    hb_value_array_t * lang_list = FUNC5(preset, "SubtitleLanguageList");
    const iso639_lang_t * lang_any  = FUNC21();
    const char          * pref_lang = lang_any->iso639_2;

    count = FUNC16(lang_list);
    if (count > 0)
    {
        pref_lang = FUNC20(FUNC14(lang_list, 0));
    }
    if (!FUNC23(pref_lang, lang_any->iso639_2))
    {
        if (first_audio_lang != NULL)
        {
            pref_lang = first_audio_lang;
            foreign_first_audio = 0;
        }
        else
        {
            foreign_audio_search = foreign_first_audio = 0;
        }
    }

    int track;
    if (first_audio_lang != NULL &&
        foreign_first_audio && FUNC24(first_audio_lang, pref_lang, 4))
    {
        // First audio lang does not match the preferred subittle lang.
        // Preset says to add pref lang subtitle.
        // Foreign audio search is not necessary since entire audio track
        // is foreign.
        foreign_audio_search = 0;
        behavior.one = 1;
        behavior.burn_foreign = burn_foreign;
        behavior.make_default = 1;
        FUNC1(list, title, mux, pref_lang, &behavior);
    }

    hb_dict_t *search_dict = FUNC5(subtitle_dict, "Search");
    if (search_dict == NULL)
    {
        search_dict = FUNC6();
        FUNC7(subtitle_dict, "Search", search_dict);
    }
    if (first_audio_lang != NULL &&
        foreign_audio_search && !FUNC24(first_audio_lang, pref_lang, 4))
    {
        // First audio lang matches the preferred subtitle lang.
        // Preset says to add search for foreign audio subtitles.
        int burn = burn_foreign || behavior.burn_first;
        // If not burning, make this the default track.
        FUNC7(search_dict, "Enable", FUNC17(1));
        FUNC7(search_dict, "Default", FUNC17(!burn));
        FUNC7(search_dict, "Forced", FUNC17(1));
        FUNC7(search_dict, "Burn", FUNC17(burn));
    }
    else
    {
        FUNC7(search_dict, "Enable", FUNC17(0));
    }

    if (track_behavior > 0)
    {
        int ii;
        behavior.one = track_behavior == 1;
        behavior.burn_foreign = 0;
        behavior.make_default = 0;
        for (ii = 0; ii < count; ii++)
        {
            const char *lang;
            lang = FUNC20(FUNC14(lang_list, ii));
            FUNC1(list, title, mux, lang, &behavior);
        }
        if (count <= 0)
        {
            // No matching language.  Try "Unknown" language
            FUNC1(list, title, mux, "und", &behavior);
        }
    }

    if (FUNC18(FUNC5(preset, "SubtitleAddCC")))
    {
        // Add Closed Caption track
        for (track = 0; track < source_subtitle_count; track++)
        {
            if (behavior.used[track])
            {
                continue;
            }
            hb_subtitle_t *subtitle = FUNC12(title->list_subtitle, track);
            if (subtitle->source == CC608SUB || subtitle->source == CC708SUB)
            {
                int burn;
                burn = !behavior.one_burned &&
                       (!FUNC13(subtitle->source, mux) ||
                        behavior.burn_first);
                behavior.used[track] = 1;
                behavior.one_burned |= burn;
                FUNC0(list, track, 0 /*default*/, 0 /*!force*/, burn,
                             subtitle->name);
                break;
            }
        }
    }
    FUNC3(behavior.used);

    return 0;
}