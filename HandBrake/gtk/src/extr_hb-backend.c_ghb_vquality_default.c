
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int gint ;
 int ghb_settings_video_encoder_codec (int ,char*) ;
 int hb_video_quality_get_limits (int,float*,float*,float*,int*) ;

float
ghb_vquality_default(signal_user_data_t *ud)
{
    float quality;
    gint vcodec;
    vcodec = ghb_settings_video_encoder_codec(ud->settings, "VideoEncoder");

    switch (vcodec)
    {
    case 128:
    case 131:
    case 130:
    case 129:
    case 132:
    case 133:
        return 20;
    case 134:
        return 45;
    case 136:
    case 135:
        return 3;
    default:
    {
        float min, max, step;
        int direction;

        hb_video_quality_get_limits(vcodec, &min, &max, &step, &direction);


        quality = (max - min) * 0.7;
        if (direction)
            quality = max - quality;
    }
    }
    return quality;
}
