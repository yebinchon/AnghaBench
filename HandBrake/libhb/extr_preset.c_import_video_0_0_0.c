
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_value_t ;


 int HB_VCODEC_FFMPEG_MASK ;
 int * hb_dict_get (int *,char*) ;
 int hb_dict_set (int *,char*,int ) ;
 int hb_value_dup (int *) ;
 scalar_t__ hb_value_get_bool (int *) ;
 scalar_t__ hb_value_get_int (int *) ;
 char* hb_value_get_string (int *) ;
 int hb_value_int (int) ;
 int hb_value_string (char const*) ;
 int hb_video_encoder_get_from_name (char const*) ;
 int strncasecmp (char const*,char*,int) ;

__attribute__((used)) static void import_video_0_0_0(hb_value_t *preset)
{
    hb_value_t *val;

    if ((val = hb_dict_get(preset, "x264Preset")) != ((void*)0))
         hb_dict_set(preset, "VideoPreset", hb_value_dup(val));
    if ((val = hb_dict_get(preset, "x264Tune")) != ((void*)0))
         hb_dict_set(preset, "VideoTune", hb_value_dup(val));
    if ((val = hb_dict_get(preset, "h264Profile")) != ((void*)0))
         hb_dict_set(preset, "VideoProfile", hb_value_dup(val));
    if ((val = hb_dict_get(preset, "h264Level")) != ((void*)0))
         hb_dict_set(preset, "VideoLevel", hb_value_dup(val));
    if ((val = hb_dict_get(preset, "x264OptionExtra")) != ((void*)0))
        hb_dict_set(preset, "VideoOptionExtra", hb_value_dup(val));



    if ((val = hb_dict_get(preset, "VideoTune")) != ((void*)0))
    {
        const char *tune;
        tune = hb_value_get_string(val);


        if (tune != ((void*)0) && !strncasecmp(tune, "none", 4))
        {
            tune += 4;
            if (tune[0] == ',')
            {
                tune++;
            }
        }
        if (tune != ((void*)0))
        {
            hb_dict_set(preset, "VideoTune", hb_value_string(tune));
        }
    }

    if (hb_value_get_int(hb_dict_get(preset, "VideoQualityType")) == 0)
    {

        hb_dict_set(preset, "VideoQualityType", hb_value_int(1));
    }

    if (hb_value_get_bool(hb_dict_get(preset, "VideoFrameratePFR")))
    {
        hb_dict_set(preset, "VideoFramerateMode", hb_value_string("pfr"));
    }
    else if (hb_value_get_bool(hb_dict_get(preset, "VideoFramerateCFR")))
    {
        hb_dict_set(preset, "VideoFramerateMode", hb_value_string("cfr"));
    }
    else if (hb_value_get_bool(hb_dict_get(preset, "VideoFramerateVFR")))
    {
        hb_dict_set(preset, "VideoFramerateMode", hb_value_string("vfr"));
    }

    const char *enc;
    int codec;
    enc = hb_value_get_string(hb_dict_get(preset, "VideoEncoder"));
    codec = hb_video_encoder_get_from_name(enc);
    if (codec & HB_VCODEC_FFMPEG_MASK)
    {
        if ((val = hb_dict_get(preset, "lavcOption")) != ((void*)0))
            hb_dict_set(preset, "VideoOptionExtra", hb_value_dup(val));
    }
}
