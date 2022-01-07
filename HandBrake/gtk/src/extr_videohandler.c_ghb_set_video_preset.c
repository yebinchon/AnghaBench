
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GhbValue ;


 int ghb_dict_set_int (int *,char*,int) ;
 int ghb_dict_set_string (int *,char*,char const*) ;
 char** hb_video_encoder_get_presets (int) ;
 int strcasecmp (char const*,char const* const) ;

int ghb_set_video_preset(GhbValue *settings, int encoder, const char * preset)
{
    const char * const * videoPresets;
    int ii, result = 0;

    videoPresets = hb_video_encoder_get_presets(encoder);
    for (ii = 0; videoPresets && videoPresets[ii]; ii++)
    {
        if (preset != ((void*)0) && !strcasecmp(preset, videoPresets[ii]))
        {
            ghb_dict_set_int(settings, "VideoPresetSlider", ii);
            result = 1;
            break;
        }
    }
    if (preset == ((void*)0) && videoPresets != ((void*)0))
    {

        ii = ii / 2;
        preset = videoPresets[ii];
        ghb_dict_set_int(settings, "VideoPresetSlider", ii);
        result = 1;
    }
    if (preset != ((void*)0))
    {
        ghb_dict_set_string(settings, "VideoPreset", preset);
    }
    return result;
}
