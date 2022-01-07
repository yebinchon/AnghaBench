
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int const hb_value_t ;
typedef int const hb_value_array_t ;
struct TYPE_4__ {int list_audio; } ;
typedef TYPE_1__ hb_title_t ;
typedef int hb_handle_t ;
typedef int const hb_dict_t ;


 int HB_MUX_INVALID ;
 scalar_t__ HB_VALUE_TYPE_STRING ;
 int add_audio_for_lang (int const*,int const*,TYPE_1__*,int,int,int,char const*,int,int,int const*) ;
 int const* get_audio_copy_mask (int const*,int*) ;
 int get_job_mux (int const*) ;
 int hb_audio_encoder_get_from_name (char const*) ;
 int hb_dict_free (int const**) ;
 int const* hb_dict_get (int const*,char*) ;
 int const* hb_dict_init () ;
 int hb_dict_set (int const*,char*,int const*) ;
 int hb_error (char*,...) ;
 TYPE_1__* hb_find_title_by_index (int *,int) ;
 scalar_t__ hb_list_count (int ) ;
 int const* hb_value_array_get (int const*,int) ;
 int const* hb_value_array_init () ;
 int hb_value_array_len (int const*) ;
 int const* hb_value_dup (int const*) ;
 int hb_value_get_bool (int const*) ;
 int hb_value_get_int (int const*) ;
 char* hb_value_get_string (int const*) ;
 scalar_t__ hb_value_type (int const*) ;
 int strcasecmp (char const*,char*) ;
 scalar_t__ validate_audio_encoders (int const*) ;

int hb_preset_job_add_audio(hb_handle_t *h, int title_index,
                            const hb_dict_t *preset, hb_dict_t *job_dict)
{
    hb_title_t *title = hb_find_title_by_index(h, title_index);
    if (title == ((void*)0))
    {

        hb_error("Invalid title index (%d)", title_index);
        return -1;
    }
    if (hb_list_count(title->list_audio) <= 0)
    {

        return 0;
    }

    int mux = get_job_mux(job_dict);
    if (mux == HB_MUX_INVALID)
    {
        return -1;
    }

    hb_dict_t *audio_dict = hb_dict_get(job_dict, "Audio");
    if (audio_dict == ((void*)0))
    {
        audio_dict = hb_dict_init();
        hb_dict_set(job_dict, "Audio", audio_dict);
    }
    int copy_mask;
    hb_value_t *copy_mask_array = get_audio_copy_mask(preset, &copy_mask);
    if (copy_mask_array == ((void*)0))
    {
        return -1;
    }
    int fallback = 0;
    hb_dict_set(audio_dict, "CopyMask", copy_mask_array);
    hb_value_t *fallback_value = hb_dict_get(preset, "AudioEncoderFallback");
    if (fallback_value != ((void*)0))
    {
        hb_dict_set(audio_dict, "FallbackEncoder",
                    hb_value_dup(fallback_value));
        if (hb_value_type(fallback_value) == HB_VALUE_TYPE_STRING)
        {
            const char * s = hb_value_get_string(fallback_value);
            fallback = hb_audio_encoder_get_from_name(s);
            if (fallback == 0)
            {
                hb_error("Invalid fallback audio codec (%s)", s);
                return -1;
            }
        }
        else
        {
            fallback = hb_value_get_int(fallback_value);
        }
    }
    if (validate_audio_encoders(preset) < 0)
        return -1;

    hb_value_array_t *list = hb_dict_get(audio_dict, "AudioList");
    if (list == ((void*)0))
    {
        list = hb_value_array_init();
        hb_dict_set(audio_dict, "AudioList", list);
    }

    int behavior = 1;
    const char *s;
    s = hb_value_get_string(hb_dict_get(preset, "AudioTrackSelectionBehavior"));
    if (s != ((void*)0))
    {
        if (!strcasecmp(s, "none"))
            return 0;
        else if (!strcasecmp(s, "all"))
            behavior = 2;
    }



    hb_dict_t *track_dict = hb_dict_init();


    int mode;
    hb_value_array_t *lang_list = hb_dict_get(preset, "AudioLanguageList");
    mode = hb_value_get_bool(hb_dict_get(preset, "AudioSecondaryEncoderMode"));
    int count = hb_value_array_len(lang_list);
    int ii;
    for (ii = 0; ii < count; ii++)
    {
        const char *lang;
        lang = hb_value_get_string(hb_value_array_get(lang_list, ii));
        add_audio_for_lang(list, preset, title, mux, copy_mask, fallback,
                           lang, behavior, mode, track_dict);
    }

    if (count <= 0)
    {
        add_audio_for_lang(list, preset, title, mux, copy_mask, fallback,
                           "any", behavior, mode, track_dict);
    }
    hb_dict_free(&track_dict);
    return 0;
}
