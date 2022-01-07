
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* const* x264_tune_names ;
 char const* const* x265_tune_names ;

const char* const* hb_video_encoder_get_tunes(int encoder)
{
    switch (encoder)
    {
        case 132:
        case 133:
            return x264_tune_names;
        default:
            return ((void*)0);
    }
}
