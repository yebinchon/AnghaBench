
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const hb_value_t ;
typedef int hb_value_array_t ;
typedef int hb_dict_t ;


 scalar_t__ HB_VALUE_TYPE_STRING ;
 int free (char*) ;
 int * hb_audio_encoder_get_from_codec (int) ;
 int hb_audio_encoder_get_from_name (char*) ;
 int hb_audio_samplerate_get_from_name (char const*) ;
 int * hb_audio_samplerate_get_name (int) ;
 void* hb_dict_get (int const*,char*) ;
 int hb_error (char*,char*) ;
 int * hb_mixdown_get_from_mixdown (int) ;
 int * hb_value_array_get (int *,int) ;
 int hb_value_array_len (int *) ;
 int hb_value_get_int (int const*) ;
 char* hb_value_get_string (int const*) ;
 char* hb_value_get_string_xform (int const*) ;
 scalar_t__ hb_value_type (int const*) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int validate_audio_encoders(const hb_dict_t *preset)
{
    hb_value_array_t * encoder_list = hb_dict_get(preset, "AudioList");
    int count = hb_value_array_len(encoder_list);
    int ii;
    for (ii = 0; ii < count; ii++)
    {
        hb_value_t *audio_dict = hb_value_array_get(encoder_list, ii);
        hb_value_t *value;
        int codec, mix, sr;
        value = hb_dict_get(audio_dict, "AudioEncoder");
        if (hb_value_type(value) == HB_VALUE_TYPE_STRING)
        {
            codec = hb_audio_encoder_get_from_name(hb_value_get_string(value));
        }
        else
        {
            codec = hb_value_get_int(value);
        }
        if (hb_audio_encoder_get_from_codec(codec) == ((void*)0))
        {
            char *str = hb_value_get_string_xform(value);
            hb_error("Invalid audio encoder (%s)", str);
            free(str);
            return -1;
        }

        value = hb_dict_get(audio_dict, "AudioMixdown");
        if (hb_value_type(value) == HB_VALUE_TYPE_STRING)
        {
            mix = hb_audio_encoder_get_from_name(hb_value_get_string(value));
        }
        else
        {
            mix = hb_value_get_int(value);
        }
        if (hb_mixdown_get_from_mixdown(mix) == ((void*)0))
        {
            char *str = hb_value_get_string_xform(value);
            hb_error("Invalid audio mixdown (%s)", str);
            free(str);
            return -1;
        }

        value = hb_dict_get(audio_dict, "AudioSamplerate");
        if (hb_value_type(value) == HB_VALUE_TYPE_STRING)
        {
            const char *str = hb_value_get_string(value);
            if (!strcasecmp(str, "source") ||
                !strcasecmp(str, "auto") ||
                !strcasecmp(str, "same as source"))
            {
                sr = 0;
            }
            else
            {
                sr = hb_audio_samplerate_get_from_name(str);
            }
        }
        else
        {
            sr = hb_value_get_int(value);
        }
        if (sr != 0 && hb_audio_samplerate_get_name(sr) == ((void*)0))
        {
            char *str = hb_value_get_string_xform(value);
            hb_error("Invalid audio samplerate (%s)", str);
            free(str);
            return -1;
        }
    }
    return 0;
}
