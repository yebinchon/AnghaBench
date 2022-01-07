
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef char gchar ;
typedef int GhbValue ;


 int FALSE ;
 int TRUE ;
 int g_free (char*) ;
 char* g_strdup (char*) ;
 int * ghb_array_get (int *,int) ;
 int ghb_array_len (int *) ;
 int ghb_dict_copy (int *,int *) ;
 int * ghb_dict_get (int *,char*) ;
 int ghb_dict_get_int (int *,char*) ;
 char* ghb_dict_get_string (int *,char*) ;
 int ghb_dict_get_value (int *,char*) ;
 int ghb_dict_remove (int *,char*) ;
 int ghb_dict_set (int *,char*,int ) ;
 int ghb_dict_set_bool (int *,char*,int) ;
 int ghb_dict_set_int (int *,char*,int) ;
 int ghb_dict_set_string (int *,char*,char const*) ;
 int ghb_get_video_encoder (int *) ;
 int ghb_log (char*,char*) ;
 int ghb_set_video_preset (int *,int,char const*) ;
 int ghb_settings_init (int *,char*) ;
 int ghb_value_dup (int ) ;
 char* ghb_value_get_string (int *) ;
 int hb_audio_encoder_get_from_name (char const*) ;
 int strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strtok_r (char*,char*,char**) ;

void
ghb_preset_to_settings(GhbValue *settings, GhbValue *preset)
{

    ghb_dict_remove(settings, "x264Option");


    ghb_settings_init(settings, "Initialization");


    ghb_dict_copy(settings, preset);



    ghb_dict_set(settings, "scale_height", ghb_value_dup(
        ghb_dict_get_value(settings, "PictureHeight")));

    ghb_dict_set(settings, "scale_width", ghb_value_dup(
        ghb_dict_get_value(settings, "PictureWidth")));

    int width, height, uses_pic, autoscale;

    width = ghb_dict_get_int(settings, "PictureWidth");
    height = ghb_dict_get_int(settings, "PictureHeight");
    uses_pic = ghb_dict_get_int(settings, "UsesPictureSettings");

    autoscale = uses_pic != 1 || (width == 0 && height == 0);
    ghb_dict_set_bool(settings, "autoscale", autoscale);
    ghb_dict_set_int(settings, "PictureWidthEnable", !autoscale);
    ghb_dict_set_int(settings, "PictureHeightEnable", !autoscale);

    gint vqtype;

    vqtype = ghb_dict_get_int(settings, "VideoQualityType");



    switch (vqtype)
    {
    case 0:
    {
        ghb_dict_set_bool(settings, "vquality_type_bitrate", TRUE);
        ghb_dict_set_bool(settings, "vquality_type_constant", FALSE);
    } break;
    case 1:
    {
        ghb_dict_set_bool(settings, "vquality_type_bitrate", TRUE);
        ghb_dict_set_bool(settings, "vquality_type_constant", FALSE);
    } break;
    case 2:
    {
        ghb_dict_set_bool(settings, "vquality_type_bitrate", FALSE);
        ghb_dict_set_bool(settings, "vquality_type_constant", TRUE);
    } break;
    default:
    {
        ghb_dict_set_bool(settings, "vquality_type_bitrate", FALSE);
        ghb_dict_set_bool(settings, "vquality_type_constant", TRUE);
    } break;
    }

    const gchar *mode = ghb_dict_get_string(settings, "VideoFramerateMode");
    if (mode != ((void*)0) && strcmp(mode, "cfr") == 0)
    {
        ghb_dict_set_bool(settings, "VideoFramerateCFR", TRUE);
        ghb_dict_set_bool(settings, "VideoFrameratePFR", FALSE);
        ghb_dict_set_bool(settings, "VideoFramerateVFR", FALSE);
    }
    else if (mode != ((void*)0) && strcmp(mode, "pfr") == 0)
    {
        ghb_dict_set_bool(settings, "VideoFramerateCFR", FALSE);
        ghb_dict_set_bool(settings, "VideoFrameratePFR", TRUE);
        ghb_dict_set_bool(settings, "VideoFramerateVFR", FALSE);
    }
    else
    {
        ghb_dict_set_bool(settings, "VideoFramerateCFR", FALSE);
        ghb_dict_set_bool(settings, "VideoFrameratePFR", FALSE);
        ghb_dict_set_bool(settings, "VideoFramerateVFR", TRUE);
    }

    int encoder;
    const char *videoPreset;

    encoder = ghb_get_video_encoder(settings);
    videoPreset = ghb_dict_get_string(settings, "VideoPreset");
    ghb_set_video_preset(settings, encoder, videoPreset);

    char *videoTune;
    char *tune = ((void*)0);
    char *saveptr;
    char *tok;

    videoTune = g_strdup(ghb_dict_get_string(settings, "VideoTune"));
    if (videoTune != ((void*)0))
    {
        tok = strtok_r(videoTune, ",./-+", &saveptr);
        ghb_dict_set_bool(settings, "x264FastDecode", FALSE);
        ghb_dict_set_bool(settings, "x264ZeroLatency", FALSE);
        while (tok != ((void*)0))
        {
            if (!strcasecmp(tok, "fastdecode"))
            {
                ghb_dict_set_bool(settings, "x264FastDecode", TRUE);
            }
            else if (!strcasecmp(tok, "zerolatency"))
            {
                ghb_dict_set_bool(settings, "x264ZeroLatency", TRUE);
            }
            else if (tune == ((void*)0))
            {
                tune = g_strdup(tok);
            }
            else
            {
                ghb_log("Superfluous tunes! %s", tok);
            }
            tok = strtok_r(((void*)0), ",./-+", &saveptr);
        }
        g_free(videoTune);
    }
    if (tune != ((void*)0))
    {
        ghb_dict_set_string(settings, "VideoTune", tune);
        g_free(tune);
    }

    const char *videoProfile;
    videoProfile = ghb_dict_get_string(settings, "VideoProfile");
    if (videoProfile != ((void*)0))
        ghb_dict_set_string(settings, "VideoProfile", videoProfile);

    const char *videoLevel;
    videoLevel = ghb_dict_get_string(settings, "VideoLevel");
    if (videoLevel != ((void*)0))
        ghb_dict_set_string(settings, "VideoLevel", videoLevel);

    if (ghb_dict_get(settings, "x264OptionExtra") != ((void*)0))
    {
        const char *optionExtra;
        optionExtra = ghb_dict_get_string(settings, "x264OptionExtra");
        ghb_dict_set_string(settings, "VideoOptionExtra", optionExtra);
    }


    GhbValue *copy_mask;
    copy_mask = ghb_dict_get(preset, "AudioCopyMask");
    if (copy_mask != ((void*)0))
    {
        int count = ghb_array_len(copy_mask);
        int ii;
        for (ii = 0; ii < count; ii++)
        {
            GhbValue *val = ghb_array_get(copy_mask, ii);
            const char *s = ghb_value_get_string(val);
            int acodec = hb_audio_encoder_get_from_name(s);
            switch (acodec)
            {
                default:
                    break;
                case 130:
                case 129:
                    ghb_dict_set_bool(settings, "AudioAllowMP3Pass", 1);
                    break;
                case 143:
                case 137:
                case 136:
                case 146:
                    ghb_dict_set_bool(settings, "AudioAllowAACPass", 1);
                    break;
                case 145:
                case 144:
                    ghb_dict_set_bool(settings, "AudioAllowAC3Pass", 1);
                    break;
                case 142:
                case 139:
                    ghb_dict_set_bool(settings, "AudioAllowDTSPass", 1);
                    break;
                case 141:
                case 140:
                    ghb_dict_set_bool(settings, "AudioAllowDTSHDPass", 1);
                    break;
                case 135:
                case 138:
                    ghb_dict_set_bool(settings, "AudioAllowEAC3Pass", 1);
                    break;
                case 134:
                case 133:
                case 131:
                    ghb_dict_set_bool(settings, "AudioAllowFLACPass", 1);
                    break;
                case 132:
                case 128:
                    ghb_dict_set_bool(settings, "AudioAllowTRUEHDPass", 1);
                    break;
            }
        }
    }
}
